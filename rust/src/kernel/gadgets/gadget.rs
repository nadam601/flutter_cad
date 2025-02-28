use glam::f32::Vec3;
use crate::renderer::mesh::Mesh;

pub trait Gadget {
    fn tessellate(&self, output_mesh: &mut Mesh);
    // Returns the index of the handle.
    fn hit_test(&self, ray_origin: Vec3, ray_direction: Vec3) -> Option<i32>;
    fn start_drag(&mut self, handle_index: i32, ray_origin: Vec3, ray_direction: Vec3);
    fn drag(&mut self, handle_index: i32, ray_origin: Vec3, ray_direction: Vec3);
    fn end_drag(&mut self);
    fn clone_box(&self) -> Box<dyn Gadget>;
}

