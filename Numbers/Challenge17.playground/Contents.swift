import UIKit

/*
 Challenge 17: Number is prime
 Write a function that accepts an integer as its parameter and returns true if the number is prime.
 Tip: A number is considered prime if it is greater than one and has no positive divisors other than 1 and itself.
 Sample input and output
 • The number 11 should return true.
 • The number 13 should return true.
 • The number 4 should return false.
 • The number 9 should return false.
 • The number 16777259 should return true.
*/

//Solution 1
/*func challenge17(number: Int) -> Bool {
    guard number >= 2 else { return false }
    
    for i in 2 ..< number {
        if number % i == 0 {
          return false
        }
    }
    return true
}

challenge17(number: 11)
*/


//Solution 2
func challenge17(number: Int) -> Bool {
    guard number >= 2 else { return false }
    guard number != 2 else { return true }
    
    let max = Int(ceil(sqrt(Double(number))))
    
    for i in 2 ... max {
        if number % i == 0 {
            return false
        }
    }
    return true
}

challenge17(number: 25)
