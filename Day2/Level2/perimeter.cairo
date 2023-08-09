
use debug::PrintTrait;
use traits::Into;

fn calculateRectanglePerimeter(len: u32, width: u32){
    let res=len+width;
    let perimeter=res*2;
    let perimeter_mut:felt252=perimeter.into();

    perimeter_mut.print()

} 

fn main(){
   calculateRectanglePerimeter(2,4);
    
}