// Playground - noun: a place where people can play

import UIKit

let x = 5
var hi: String?

hi = "hello"

if 4 < 5 {
    hi = "hello there"
}

hi

var list: Array<Int>?
list = Array<Int>()

//list = nil

list!.append(x)

// ! is like forcing, not advised

list

// ? is optional ~ nil

func mySqrt(value: Double) -> Double? {
    if value < 0 {
        return nil
    }
    else {
        return value
    }
}

var y = mySqrt(9.0)

if let z = y {
    z + 5.0
}

y = mySqrt(-9.0)

if let z = y {
    z + 5.0
}

// ...unwrapping optionals - this depends on mySqrt returning an optional value => ?

// once an optional is created the only way to set a value to it is to use the "if let x = y {...}

// if 
// else if
// else

var numbers = [1,2,3,4,5,6,7,8,9,10]
var sum = 0

for x in numbers {
    sum += x
}

sum

var n = 0

var isRunning = true
while isRunning {
    if n >= 100 {
        break
    }
    n += 1
}


func greetings(name: String) -> String {
    return "Hello \(name)"
}

greetings("John")

//println("Just a moment... \(greetings(name: yourName))"

var a = 10
var b = 20

"the sum of \(a) and \(b) is \(a + b)"

// single task responsibility - it does one thing but really well

