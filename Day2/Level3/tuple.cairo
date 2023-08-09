use debug::PrintTrait;


fn main() { 
    let tup = (500, 6, 8, 12); 
    let(w,x,y,z)=tup;
    let sum = w+x+y+z;
    sum.print()
}
// Complete the Code above hence making it add the values in the tuple and printing the sum