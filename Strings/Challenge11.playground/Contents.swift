import UIKit

/*
 Challenge 11: Run-length encoding
 Write a function that accepts a string as input, then returns how often each letter is repeated in a single run, taking case into account.
 Tip: This approach is used in a simple lossless compression technique called run-length encoding.
 Sample input and output
 • The string “aabbcc” should return “a2b2c2”.
 • The strings “aaabaaabaaa” should return “a3b1a3b1a3”
 • The string “aaAAaa” should return “a2A2a2”
 */

func challenge11(_ input: String) {
  let inputArray = Array(input)
  var firstLetter = inputArray[1]
  var letterCount = 0
  var result = ""
  
        
    
    for (index, char) in inputArray.enumerated() {
        if char == inputArray[index]{
            letterCount += 1
        }
    }
    
    print(letterCount)
  
}

let input = "aabbcc"
challenge11(input)
//print(result)


