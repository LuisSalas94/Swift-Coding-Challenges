import UIKit

/*
 Challenge 6: Remove duplicate letters from a string
 Write a function that accepts a string as its input, and returns the same string just with
 duplicate letters removed.
 Tip: If you can solve this challenge without a for-in loop, you can consider it “tricky” rather than “easy”.
 */

//Solution 1
func challenge5(_ input: String) -> String {
    var strBox = [String]()
    for char in input {
        if !strBox.contains(String(char)) {
            strBox.append(String(char))
        }
    }
    return strBox.joined(separator: "")
}

let input: String = "Mississippi"
let result = challenge5(input)
print(result)
