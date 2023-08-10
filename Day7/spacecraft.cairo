// You're creating a virtual reality simulation of a space exploration mission. Design a struct 
// named Spacecraft with fields for the spacecraft's name, position, and data collected. 
// Implement methods for launching, navigating, and collecting data. 

use debug::PrintTrait;
#[derive(Copy, Drop)]
struct Spacecraft{
    name:felt252,
    position:(u64,u64,u64),
    data_collected:bool,
    launched:bool,
    navigated:bool,
}

trait SpacecraftTrait{
    fn launch(ref self:Spacecraft)->felt252;
    fn navigating(ref self:Spacecraft)->felt252;
    fn collecting_data(ref self:Spacecraft)->felt252;

}
impl SpacecraftImpl of SpacecraftTrait{
    fn launch(ref self:Spacecraft)->felt252{
        self.launched=true;
        'launched successfully'
        }
    fn navigating(ref self:Spacecraft)->felt252{
        self.navigated = true;
        'navigating  above ground'
    }
    fn collecting_data(ref self:Spacecraft)->felt252{
            self.data_collected=true;
            'data_collected'
        }
}

fn main(){
    let mut res=Spacecraft{name:'the xyz craft',position:(60,60,60),data_collected:false,launched:false,navigated:false};
    res.launch().print();
    res.navigating().print();
    res.collecting_data().print();
    
}