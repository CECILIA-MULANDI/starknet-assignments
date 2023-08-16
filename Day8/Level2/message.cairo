// Level 2
// The following snippet was taken from the official cairo book
// #[derive(Drop)]
// enum Message {
// Quit: (),
// Echo: felt252,
// Move: (u128, u128),
// } 
// Extend the Message enum by adding a new variant called ChangeColor that includes a tuple (u8,
// u8, u8) representing RGB values. Write a function that takes a Message variant and performs 
// different actions based on the type of message. For the ChangeColor variant, print the RGB values.


use debug::PrintTrait;
#[derive(Drop)]
enum Message {
    Quit: (),
    Echo: felt252,
    Move: (u128, u128),
    ChangeColor:(u8,u8,u8)
} 


fn perform_on_message(sms:Message){
    match sms{
        Message::Quit(())=>{
            'i quit this job'.print()
        },
        Message::Echo(value)=>{
            value.print()
        },
        Message::Move((x,y))=>{
            x.print();
            y.print();
        },
        Message::ChangeColor((x,y,z))=>{
            x.print();
            y.print();
            z.print();
        }
    }
}


fn main(){
    let messages=perform_on_message(Message::ChangeColor((0x2,0x3,0x4)));
    messages
}