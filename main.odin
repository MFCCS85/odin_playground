package main

import "core:fmt"
import "core:os"

main :: proc() {
    for i:= 1 ; i <101 ; i += 1{
        Fizzbuzz(i)
    }
}

Fizzbuzz :: proc(n: int){
    if n % 15 == 0 do fmt.println("FizzBuzz")
    else if n % 5 == 0 do fmt.println("Buzz")
    else if n % 3 == 0 do fmt.println("Fizz")
    else do fmt.println(n) 
}