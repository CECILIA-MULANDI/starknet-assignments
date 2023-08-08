// 1. Create a Cairo function named sum_multiples that takes two parameters, n and m, both of 
// type u32. The function should calculate and return the sum of all numbers from 1 to n that are 
// multiples of m. Test the function with different values of n and m. (5 mks)
use debug::PrintTrait;
fn sum_multiples(n:u32,m:u32)->u32{
    let mut ans:u32=0;
    let mut i :u32= 1;
    loop{
        if i==i+1{
            break;
        };
        if i % m == 0{
            ans=ans+i;
            };
        i=i+1;
        };
    return ans;
    
}

fn main(){
    let result=sum_multiples(5,5);
    result.print();

}