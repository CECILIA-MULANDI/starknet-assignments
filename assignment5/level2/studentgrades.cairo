// You are given an empty dictionary called student_grades, and you need to populate it with 
// the grades of three students: Alex, Maria, and John.
//  grades are as follows:
// • Alex: 85
// • Maria: 92
// • John: 78
// Write code in Cairo to insert the grades of the students into the student_grades dictionary. 
// Then, write a function called get_student_grade that takes the name of a student as input 
// and returns their grade from the student_grades dictionary.
// Your task is to implement the code to insert the grades and the get_student_grade
// function in Cairo.
// For example, if you call get_student_grade('Maria'), it should return 92. If you call 
// get_student_grade('John'), it should return 78.


use dict::Felt252DictTrait;
// we first insert then get the value
fn get_student_grade(name:felt252)->u64{
    let mut student_grades:Felt252Dict<u64> = Default::default();
    student_grades.insert('Alex',25);
    student_grades.insert('Maria',79);
    student_grades.insert('John',40);
    let mut studentdatum=student_grades.get(name);
    studentdatum

    
    
    
}
fn main()-> u64{
    let mut result=get_student_grade('Alex');
    result

}

