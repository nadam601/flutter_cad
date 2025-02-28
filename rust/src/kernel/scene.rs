use super::atomic_structure::AtomicStructure;
use super::surface_point_cloud::SurfacePointCloud;
use super::gadget_state::GadgetState;

pub struct Scene {
    pub atomic_structures: Vec<AtomicStructure>,
    pub surface_point_clouds: Vec<SurfacePointCloud>,

    pub gadget_state: GadgetState,
}

impl Scene {
    pub fn new() -> Self {
        Self {
            atomic_structures: Vec::new(),
            surface_point_clouds: Vec::new(),
            gadget_state: GadgetState::Empty,
        }
    }

    pub fn merge(&mut self, other: Scene) {
        self.atomic_structures.extend(other.atomic_structures);
        self.surface_point_clouds.extend(other.surface_point_clouds);
        
        match other.gadget_state {
            GadgetState::Empty => {}, // Do nothing if empty
            non_empty_state => self.gadget_state = non_empty_state,
        }
    }
}
