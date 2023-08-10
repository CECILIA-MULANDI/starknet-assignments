// You are building a library management system in Cairo. Create a struct called "Book" to 
// represent a book, including fields for "title" (string), "author" (string), "isbn" (string), and 
// "isAvailable" (bool). Implement a method named "borrowBook" that marks the book as 
// unavailable when borrowed and "returnBook" that marks it as available when returned.

use debug::PrintTrait;
#[derive(Copy, Drop)]
struct Book{
    title:felt252,
    author:felt252,
    isbn:felt252,
    isAvailable:bool,
}


trait BookTrait{
    fn borrowBook(ref self:Book)->bool;
    fn returnBook(ref self:Book)->bool;
}

impl BookImp of BookTrait{
    fn borrowBook(ref self:Book)->bool{
       if self.isAvailable{
        self.isAvailable=false;
        self.isAvailable.print();
        return true;
       }
       else{
        self.isAvailable=true;
        self.isAvailable.print();
        return false;
       }
        

    }

    fn returnBook(ref self:Book)->bool{
        if !self.isAvailable{
            self.isAvailable=true;
            self.isAvailable.print();
            return true;
        }
        return false;
    }

}


fn main(){
    let mut book1=Book{title:'The chosen',author:'Marckle Vicky',isbn:'2234sddff',isAvailable:false};
    book1.borrowBook();

}