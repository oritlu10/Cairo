fn main() {
    let cairo_prime: felt252 = 3618502788666131213697322783095070105623107215331596699973092056135872020481;
}

fn main() {
    // max value of felt252 (P - 1)
    let x = 3618502788666131213697322783095070105623107215331596699973092056135872020480;
    assert(x + 1 == 0, '(P - 1) + 1 == 0 (mod P)');
    // assert(x == -1, 'negation is modular'); <- still not supported
    assert(x == 0 - 1, 'subtraction is modular');
    assert(x * x == 1, 'multiplication is modular');
}

use traits::TryInto;
use option::OptionTrait;

fn main() {
    let two = TryInto::try_into(2).unwrap();

    assert(felt252_div(2, two) == 1, '2 == 1 * 2');

    // (P + 1) / 2
    let half_prime_plus_one = 1809251394333065606848661391547535052811553607665798349986546028067936010241;
    assert(felt252_div(1, two) == half_prime_plus_one, '1 == ((P + 1) / 2) * 2 (mod P)');
}