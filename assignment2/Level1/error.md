use debug::PrintTrait; 
fn main() { 
    let x = 5; 
    x.print(); 
    x = 6; 
    x.print(); 
}

error: Cannot assign to an immutable variable.
x is immutable hence it value cannot be changed
