// Write a snippet of Cairo code that demonstrates the concept of variable scope and ownership. Declare a
// variable x and use it within a scope. Explain what happens to the variable's ownership when the scope 
// is exited.

use debug::PrintTrait;
fn main(){
    let s = 'welcome';
        {                      
        let s = 'hi';   

        s.print();
    }                      // this scope is now over, and s is no longer valid

    s.print();
}