// Write a Cairo function called calculate_average that takes a snapshot of an Array of integers 
// and returns the average value of the elements in the Array. Make sure to use the snapshot to calculate 
// the average without modifying the original Array.

use array::ArrayTrait;
use debug::PrintTrait;
fn calculate_average(arr:@Array<u32>)->u32{
    let mut i = 0;
    let mut res:u32=0;
    let lengtharr=arr.len();
    loop{
        if i == lengtharr{
            break;
        };
        res=res+*arr[i];
        i=i+1;
        
    };
    res/lengtharr
    

}

fn main(){
    let mut average = ArrayTrait::<u32>::new();
   
    // mutate the array
    average.append(5);
    average.append(3);
    average.append(6);
    let res_average=calculate_average(@average);
    res_average.print();
}