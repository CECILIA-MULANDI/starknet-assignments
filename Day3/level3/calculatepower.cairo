// <!-- 1. Create a Cairo function called calculate_power that takes two parameters, base and 
// exponent, both of type u32. The function should calculate and return the result of 
// base^exponent. Test the function with different values of base and exponent. (5 mks) -->




use debug::PrintTrait;

fn calculate_power(base: u32, exponent: u32) -> u32 {
    if exponent == 0 {
        1.print();
    };

    let mut result:u32= 1;
    let mut count: u32 = 0;
    loop {
        if count == exponent {
            break;
        };
        result = result * base;
        count = count + 1;
    };

    return result;
}

fn main() {
    let res = calculate_power(2, 3);
    res.print();
}