//: Closure Expressions

func doubler(i: Int) -> Int {
    return i * 2
}

let doubleFunction = doubler
doubleFunction(4)

let numbers = [1,2,3,4,5]
let doubleNumbers = numbers.map(doubleFunction)

// Using closure expressions with the map function
let tripledNumbers = numbers.map({(i: Int) -> Int in return i * 3 })

// closure shorthand syntax

let tripleFunction = {(i: Int) -> Int in return i * 3}
[1,2,3,4,5].map(tripleFunction)

// Rule #1: directly pass anonymous function
[1,2,3,4,5].map({(i: Int) -> Int in return i * 3})

// Rule #2: infer type from context
[1,2,3,4,5].map({i in return i * 3})

// Rule #3: Implicit returns from Single Expression Closures
[1,2,3,4,5].map({i in i * 3})

// Rule #4: Shorthand Argument Names
// $0 refers to first argument
// $1 refers to second argument
[1,2,3,4,5].map({$0 * 3})

// Rule #5: trailing closures
// Useful when the closure is too long
// to write out inline
[1,2,3,4,5].map() {$0 * 3}
// Trailing closure allow long func
// to be easier to read
[1,2,3,4,5].map() {
    (var digit) -> Int in
    if digit % 2 == 0 {
        return digit % 2
    } else {
        return digit
    }
}

// Rule # 6: Ignoring Parentheses
[1,2,3,4,5].map {$0 * 3}