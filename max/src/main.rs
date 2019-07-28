use std::env;

fn main() {
    let numbers = take_input();
    let max = biggest_num(&numbers);
    println!("{}",max);
}

fn take_input() -> Vec<String> {
    let args: Vec<String> = env::args().collect();
    args
}

fn biggest_num(numbers: &Vec<String>) -> i64 {
    let mut temp_biggest:i64 = 0;
    for _i in numbers {
        let temp_int = _i.parse::<i64>().unwrap_or(0);
        if temp_int > temp_biggest {
            temp_biggest = temp_int;
        }
    }
    temp_biggest
}
