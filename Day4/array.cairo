use debug::PrintTrait;
use array::ArrayTrait;

fn main() {
    let mut newarr = ArrayTrait::new();
    newarr.append(10);
    newarr.append(20);
    newarr.append(30);
    newarr.print();
}