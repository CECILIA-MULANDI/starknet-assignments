// 1. Write the code to define a Rectangle struct with width and height fields, and then create 
// an instance of this struct with the specified values. 
// i. Implement a method named print_dimensions for the Rectangle struct that prints 
// its width and height fields. 
// ii. include a method calculate_perimeter that calculates and returns the perimeter of 
// the rectangle. 

use debug::PrintTrait;
#[derive(Copy, Drop)]

struct Rectangle{
    width:u64,
    height:u64
}
trait RectangleTrait {
    fn calculate_perimeter(self:@Rectangle) -> u64;
    fn print_dimensions(ref self:Rectangle);
}
impl RectangleImpl of RectangleTrait {
    fn calculate_perimeter(self:@Rectangle) -> u64 {
        let  sum=(*self.width)+(*self.height);
        let perimeter=sum*2;
        perimeter    
    }
    fn print_dimensions(ref self:Rectangle) {
        self.width.print();
        self.height.print();
       
    }
}

fn main(){
    let mut rec1 = Rectangle{width:2,height:1};
    rec1.calculate_perimeter().print();
    rec1.print_dimensions();

}

