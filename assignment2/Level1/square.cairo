// Write a Cairo function that takes an integer num as input and returns its square

use debug::PrintTrait;

// function to take in the nos and square

fn square(x:u8)->u8{
    x*x
}

fn main(){
    let result=square(3);
    result.print();
    
}