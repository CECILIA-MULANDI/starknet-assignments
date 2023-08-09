// You have a Felt252Dict<u64> dictionary that represents the quantity of different products in a 
// warehouse. Write a function called add_product that takes a mutable reference to the 
// dictionary, a product name (felt252), and the quantity (u64) of the product to add. If the product 
// already exists in the dictionary, update its quantity by adding the given quantity. If the product 
// does not exist, create a new entry with the given quantity.



use debug::PrintTrait;
use dict::Felt252DictTrait;


