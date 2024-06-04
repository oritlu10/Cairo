fn main() {
    // Variables can be type annotated.
    let logical: bool = true;

    let a: u64 = 1;  // Regular annotation
    let b = 5_u32; // Suffix annotation

    // Or a default will be used.
    let default_integer = 7;   // `felt252`

    // A type can also be inferred from context.
    let mut inferred_type = 12; // Type u64 is inferred from another line.
    inferred_type = 4294967296_u64;

    // A mutable variable's value can be changed.
    let mut mutable = 12_u32; // Mutable `u32`
    mutable = 21;

    // Tuples can hold variables of different types
    let tuple = (1_u32, true, 10000000_u64);

    // Including other tuples
    let composed_tuple = (tuple, 1_u8, (true, false));

    // Tuple values can be unpacked to create bindings
    let (a, b, c) = tuple;
    assert(a == 1_u32, 'tuple unpack');
}

fn main() {
    let num_decimal = 171717_u32;
    let num_hex = 0x29ec5_u32;
    let num_octal = 0o517305;
    let num_binary = 0b101001111011000101;
    assert(num_decimal == num_hex, 'numeric literal cmp');
    assert(num_decimal == num_octal, 'numeric literal cmp');
    assert(num_decimal == num_binary, 'numeric literal cmp');
}