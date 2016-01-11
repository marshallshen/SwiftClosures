//: Closures = Anonymous Functions
// Closures enable high-order functions

// This func takes a String and prints it
func printString(aString: String) {
    print("Printing the string passed in: \(aString)")
}

printString("Hi, my name is Marshall")

/*
  Assign the function we just decleared
  to a constant. Note that we do not add
  parentheses "()" after the function
  name.
*/
let someFunction = printString

someFunction("Hi, look at me!")


func printInt(number: Int) {
    print("Pring the number passed in: \(number)")
}

let numberOfApples = 3

printInt(numberOfApples)


func displayString(printStringFunc: (String) -> Void) {
    printStringFunc("I'm a function inside another function")
}

displayString(printString)

//Higher order functions: take one or more functions

// Using the filter function
let allNumbers = [1,2,3,4,5,6,7,8,9,10]

func isEvenNumber(i: Int) -> Bool {
    return i%2 == 0
}

let ifEven = isEvenNumber

let evenNumbers = allNumbers.filter(ifEven)

// Capturing variables

// Returning functions
func printerFunction() -> (Int) -> () {
    var runningTotal = 0
    func printInteger(number: Int) {
        runningTotal += 10
        print("The running total is: \(runningTotal)")
    }
    
    return printInteger
}

// printAndReturnIntegerFunc and runningTotalFunction are Closures
// Capture the context and var of a high-order function

let printAndReturnIntegerFunc = printerFunction()
printAndReturnIntegerFunc(2)
printAndReturnIntegerFunc(3)

let runningTotalFunction = printerFunction()
runningTotalFunction(1)


