use glam::i32::IVec3;
use glam::f32::Vec3;
use super::surface_point_cloud::SurfacePoint;
use super::surface_point_cloud::SurfacePointCloud;
use super::node_network::NodeNetwork;
use super::node_type::NodeData;
use super::node_type::ParameterData;
use super::node_type::SphereData;
use super::node_type::CuboidData;
use super::node_type::HalfSpaceData;
use super::node_type_registry::NodeTypeRegistry;
use std::sync::Arc;
use std::collections::HashMap;

// TODO: these will not be constant, will be set by the user
const NETWORK_EVAL_VOLUME_MIN: IVec3 = IVec3::new(-16, -16, -16);
const NETWORK_EVAL_VOLUME_MAX: IVec3 = IVec3::new(16, 16, 16);

fn eval_cuboid(node_data: &dyn NodeData, args: Vec<Vec<f32>>, sample_point: &Vec3) -> f32 {
  let cuboid_data = &node_data.as_any_ref().downcast_ref::<CuboidData>().unwrap();
  
  let max_corner = cuboid_data.min_corner + cuboid_data.extent;
  let x_val = f32::max((cuboid_data.min_corner.x as f32) - sample_point.x, sample_point.x - (max_corner.x as f32));
  let y_val = f32::max((cuboid_data.min_corner.y as f32) - sample_point.y, sample_point.y - (max_corner.y as f32));
  let z_val = f32::max((cuboid_data.min_corner.z as f32) - sample_point.z, sample_point.z - (max_corner.z as f32));

  return f32::max(f32::max(x_val, y_val), z_val);
}

fn eval_sphere(node_data: &dyn NodeData, args: Vec<Vec<f32>>, sample_point: &Vec3) -> f32 {
  let sphere_data = &node_data.as_any_ref().downcast_ref::<SphereData>().unwrap();

  return (sample_point - Vec3::new(sphere_data.center.x as f32, sphere_data.center.y as f32, sphere_data.center.z as f32)).length() 
    - (sphere_data.radius as f32);
}

fn eval_half_space(node_data: &dyn NodeData, args: Vec<Vec<f32>>, sample_point: &Vec3) -> f32 {
  let half_space_data = &node_data.as_any_ref().downcast_ref::<HalfSpaceData>().unwrap();
  let float_miller = half_space_data.miller_index.as_vec3();
  let miller_magnitude = float_miller.length();
  return (float_miller.dot(sample_point.clone()) - (half_space_data.shift as f32)) / miller_magnitude;
}

fn eval_union(node_data: &dyn NodeData, args: Vec<Vec<f32>>, sample_point: &Vec3) -> f32 {
  return args[0].iter().copied().reduce(f32::min).unwrap_or(f32::MAX);
}

fn eval_intersect(node_data: &dyn NodeData, args: Vec<Vec<f32>>, sample_point: &Vec3) -> f32 {
  return args[0].iter().copied().reduce(f32::max).unwrap_or(f32::MIN);
}

pub struct ImplicitNetworkEvaluator {
  pub node_type_registry: Arc<NodeTypeRegistry>,
  pub built_in_functions: HashMap<String,fn(&dyn NodeData, Vec<Vec<f32>>, &Vec3) -> f32>,
}

/*
 * Node network evaluator that uses implicits for geometry modeling.
 * A node network evaluator is able to generate displayable representation for a node in a node network. This evaluator
 * does this by treating the abstract operators (nodes) in the node network as implicit geometry functions. 
 * Currently this is the only network evaluator in our codebase, but it should be possible to create other evaluators
 * (like evaluator based on polygon meshes or evaluator based on voxels.)
 * On a discussion of the distinction of the abstract shape algebra and a concrete implementation see:
 * /doc/crystal/shapre_algebra.md
 * TODO: probably should be refactored into an Evaluator and an ImplicitGeometry evaluator,
 * as nodes related to atomic representation is not specific to implicits. 
 */
impl ImplicitNetworkEvaluator {

  pub fn new(node_type_registry: Arc<NodeTypeRegistry>) -> Self {
    let mut ret = Self {
      node_type_registry,
      built_in_functions: HashMap::new(),    
    };

    ret.built_in_functions.insert("cuboid".to_string(), eval_cuboid);
    ret.built_in_functions.insert("sphere".to_string(), eval_sphere);
    ret.built_in_functions.insert("half_space".to_string(), eval_half_space);
    ret.built_in_functions.insert("union".to_string(), eval_union);
    ret.built_in_functions.insert("intersect".to_string(), eval_intersect);

    return ret;
  }

  // Creates the display representation that will be displayed for the given node
  // Currently creates it from scratch, no caching is used.
  // TODO: Currently just supports geometry nodes and creates SurfacePointCloud. Should be refaactored
  // to be able to support generating atomic models too
  pub fn generate_displayable(&self, network_name: &str, node_id: u64) -> SurfacePointCloud {

    let mut point_cloud = SurfacePointCloud::new();

    let network = match self.node_type_registry.node_networks.get(network_name) {
      Some(network) => network,
      None => return point_cloud,
    };

    // Iterate over voxel grid
    for x in NETWORK_EVAL_VOLUME_MIN.x..NETWORK_EVAL_VOLUME_MAX.x {
      for y in NETWORK_EVAL_VOLUME_MIN.y..NETWORK_EVAL_VOLUME_MAX.y {
        for z in NETWORK_EVAL_VOLUME_MIN.z..NETWORK_EVAL_VOLUME_MAX.z {
          let corner_points = [
            Vec3::new(x as f32, y as f32, z as f32),
            Vec3::new((x + 1) as f32, y as f32, z as f32),
            Vec3::new(x as f32, (y + 1) as f32, z as f32),
            Vec3::new(x as f32, y as f32, (z + 1) as f32),
            Vec3::new((x + 1) as f32, (y + 1) as f32, z as f32),
            Vec3::new((x + 1) as f32, y as f32, (z + 1) as f32),
            Vec3::new(x as f32, (y + 1) as f32, (z + 1) as f32),
            Vec3::new((x + 1) as f32, (y + 1) as f32, (z + 1) as f32),
          ];

          // TODO: Optimize this by caching parts of the implicit function, because this way
          // each corner is sampled 8 times!
          let network_args: Vec<Vec<f32>> = Vec::new();
          let signs: Vec<f32> = corner_points.iter().map(
            |p| self.implicit_eval(network, &network_args, node_id, p)[0]
          ).collect();
          if signs.iter().any(|&s| s > 0.0) && signs.iter().any(|&s| s < 0.0) {
            point_cloud.points.push(
              SurfacePoint {
                position: corner_points[0] + 0.5,
                normal: Vec3::new(0.0, 1.0, 0.0),
              }
            ); // Start at cell center
          }
        }
      }
    }

    return point_cloud;
  }

  /*
   * This is a naive but simple way to evaluate the implicit function. We need this now
   * for rapid development and later to have a correct reference implementation.
   * Future possible optimizations:
   * - Do not refer to node types by string: use an internal id
   * - Do not do this recursion per sampled point, but do it for a cubic array at a time, and work with
   * cubic array of f32 values at once.
   * - Do not sample everywhere. If we know the max gradient length we can infer that there is no sign change in big ranges.
   * - Ultimatly to achieve very high performance we can consider generating GPU code so that evaluation can be done
   * per sampled point again, but massively paralelly in compute shader using generated GPU shader code.
   * The GPU compute shader needs to be regenerated on node network edit operations though, the cost of which
   * needs to be investigated. If partial recompilation of shader code is possible that would be a huge win.
   * Not all optimizations fit all use cases or even compatible with each other, so we might use multiple approaches
   * in different cases.
   */
  fn implicit_eval(&self, network: &NodeNetwork, network_args: &Vec<Vec<f32>>, node_id: u64, sample_point: &Vec3) -> Vec<f32> {
    let node = network.nodes.get(&node_id).unwrap();
    let mut args: Vec<Vec<f32>> = Vec::new();
    for argument in  &node.arguments {
      let mut arg_values : Vec<f32> = Vec::new();
      for argument_node_id in &argument.argument_node_ids {
        arg_values.append(& mut self.implicit_eval(network, network_args, *argument_node_id, sample_point));
      }
      args.push(arg_values);
    }

    if node.node_type_name == "parameter" {
      let param_data = &(*node.data).as_any_ref().downcast_ref::<ParameterData>().unwrap();
      return network_args[param_data.param_index].clone();
    }
    if let Some(built_in_function) = self.built_in_functions.get(&node.node_type_name) {
      let ret = built_in_function(&(*node.data), args, sample_point);
      return vec![ret];
    }
    if let Some(child_network) = self.node_type_registry.node_networks.get(&node.node_type_name) {
      return self.implicit_eval(child_network, &args, child_network.return_node_id.unwrap(), sample_point);
    }
    return vec![0.0];
  }
}

