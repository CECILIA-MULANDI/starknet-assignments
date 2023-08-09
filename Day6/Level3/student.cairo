// Create a struct Person with fields name (String) and age (u64). Write a function modify_person
// that takes ownership of a Person instance, modifies the age field, and returns the modified Person.
// Test your function by creating a Person instance, passing it to modify_person, and printing the 
// modified instance.
use debug::PrintTrait;
#[derive(Copy, Drop)]
struct Person{
    name:felt252,
    age:u64,

}

fn main(){
    let mut pers=Person{name:'Cecilia',age:22};
    let mut newper=change_details(ref pers);
    newper.name.print(); 
    newper.age.print(); 
    

}

fn change_details(ref pers:Person)->Person{
   Person{name:'Kanini',age:2}

   
}

