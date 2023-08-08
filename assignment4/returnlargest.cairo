// 2. Create a function that takes an array of integers and returns the second-largest 
// element in the array without sorting the array. Verify By Printing (5mks)
use debug::PrintTrait;
use array::ArrayTrait;

fn second_largest(newarr:Array<u128>) -> u128 {
    let mut largest: u128 = 0;
    let mut second_largest: u128 = 0;
    let mut i = 0;

    loop {
        if i == newarr.len() {
            break;
        };
        if *newarr.at(i) > largest {
            second_largest = largest;
            largest = *newarr.at(i);
        } else if *newarr.at(i) > second_largest && *newarr.at(i) != largest {
            second_largest = *newarr.at(i);
        };
        i = i + 1;
    };

    return second_largest;
}

fn main() {
    let mut arr = ArrayTrait::new();
    arr.append(5);
    arr.append(2);
    arr.append(9);
    arr.append(6);
   
    let second_large = second_largest(arr);
    second_large.print();
}