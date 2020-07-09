extern crate rand;
use rand::prelude::*;
use rand::Rng; 
use rand::distributions::Alphanumeric;

fn main() {
    println!("Hello World!");

    let mut rng = thread_rng();
    let x: u32 = rng.gen();
    println!("{}\n", x);

}
