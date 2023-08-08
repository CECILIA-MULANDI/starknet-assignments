// You have a Felt252Dict<u64> dictionary that represents the quantity of different products in a 
// warehouse. Write a function called add_product that takes a mutable reference to the 
// dictionary, a product name (felt252), and the quantity (u64) of the product to add. If the product 
// already exists in the dictionary, update its quantity by adding the given quantity. If the product 
// does not exist, create a new entry with the given quantity.



use array::{ArrayTrait, SpanTrait};
use box::BoxTrait;
use dict::Felt252DictTrait;
use nullable::{NullableTrait, nullable_from_box, match_nullable, FromNullableResult};

fn main() {
    // Create the dictionary
    let mut d: Felt252Dict<Nullable<Span<felt252>>> = Default::default();

    // Crate the array to insert
    let mut a = ArrayTrait::new();
    a.append(8);
    a.append(9);
    a.append(10);

    // Insert it as a `Span`
    d.insert(0, nullable_from_box(BoxTrait::new(a.span())));

    // Get value back
    let val = d.get(0);

    // Search the value and assert it is not null
    let span = match match_nullable(val) {
        FromNullableResult::Null(()) => panic_with_felt252('No value found'),
        FromNullableResult::NotNull(val) => val.unbox(),
    };

    // Verify we are having the right values
    assert(*span.at(0) == 8, 'Expecting 8');
    assert(*span.at(1) == 9, 'Expecting 9');
    assert(*span.at(2) == 10, 'Expecting 10');
}
