// Create a Cairo function called print_odd_multiples that takes two parameters, n and m, 
// both of type u32. The function should print all odd multiples of m less than or equal to n. Test 
// the function with different values of n and m. (5 mks)
use debug::PrintTrait;
fn print_odd_multiples(n:u32,m:u32){
    let mut counter:u32 =1;
    loop{
        if counter == n+1{
            break;
        };
       if counter % m  ==0 {
            if counter%2 != 0{
                counter.print();
            

            };
           
            
        };
        counter=counter+1;

    }
}
fn main(){
    print_odd_multiples(10,3)
}