use glam::i32::IVec3;
use glam::f32::Vec3;
use std::any::Any;
use super::as_any::AsAny;
use super::gadgets::gadget::Gadget;
use super::gadgets::half_space_gadget::HalfSpaceGadget;

#[derive(PartialEq)]
pub enum DataType {
  Geometry,
  Atomic
}

pub fn data_type_to_str(data_type: &DataType) -> String {
  match data_type {
    DataType::Geometry => "Geometry".to_string(),
    DataType::Atomic => "Atomic".to_string(),
  }
}

pub struct Parameter {
  pub name: String,
  pub data_type: DataType,
  pub multi: bool, // whether this parameter accepts multiple inputs. If yes, they are treated as a set of values (with no order).
}

// A built-in or user defined node type.
pub struct NodeType {
  pub name: String, // name of the node type
  pub parameters: Vec<Parameter>,
  pub output_type: DataType,
}

// Node data structs for nodes that contain data (properties)

#[derive(Debug)]
pub struct NoData {
}

#[derive(Debug)]
pub struct ParameterData {
  pub param_index: usize,
}

#[derive(Debug)]
pub struct CuboidData {
  pub min_corner: IVec3,
  pub extent: IVec3,
}

#[derive(Debug)]
pub struct SphereData {
  pub center: IVec3,
  pub radius: i32,
}

#[derive(Debug)]
pub struct HalfSpaceData {
  pub miller_index: IVec3,
  pub shift: i32,
}

#[derive(Debug)]
pub struct GeoTransData {
  pub translation: IVec3,
  pub rotation: IVec3, // intrinsic euler angles where 1 increment means 90 degrees.
}

#[derive(Debug)]
pub struct AtomTransData {
  pub translation: Vec3,
  pub rotation: Vec3, // intrinsic euler angles in radians
}

pub trait NodeData: std::fmt::Debug + Any + AsAny  {
  fn provide_gadget(&self) -> Option<Box<dyn Gadget>>;
}

impl NodeData for NoData {
  fn provide_gadget(&self) -> Option<Box<dyn Gadget>> {
    None
  }
}

impl NodeData for ParameterData {
  fn provide_gadget(&self) -> Option<Box<dyn Gadget>> {
    None
  }
}

impl NodeData for CuboidData {
  fn provide_gadget(&self) -> Option<Box<dyn Gadget>> {
    None
  }
}

impl NodeData for SphereData {
  fn provide_gadget(&self) -> Option<Box<dyn Gadget>> {
    None
  }
}

impl NodeData for HalfSpaceData {

  fn provide_gadget(&self) -> Option<Box<dyn Gadget>> {
    return Some(Box::new(HalfSpaceGadget::new(&self.miller_index, self.shift)));
  }

}

impl NodeData for GeoTransData {
  fn provide_gadget(&self) -> Option<Box<dyn Gadget>> {
    None
  }
}

impl NodeData for AtomTransData {
  fn provide_gadget(&self) -> Option<Box<dyn Gadget>> {
    None
  }
}
