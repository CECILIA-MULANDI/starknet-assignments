use debug::PrintTrait;
use traits::Into;

fn main() { 
    let tup = (500, 6, 8, 12); 
    let(w,x,y,z)=tup;
    let  sum = w+x+y+z;
    let sum:u256=sum.into();
    sum.print()
}
// converted using the aspect of shadowing
