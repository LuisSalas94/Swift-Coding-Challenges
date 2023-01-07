import UIKit
import Foundation

/*
 Challenge 4: Does one string contain another?
 Write your own version of the contains() method on String that ignores letter case, and
 without using the existing contains() method.
 */

//Solution 1
func challenge4(_ input: String, _ target: String) -> Bool {
    var inputStr = input.lowercased()
    let removeCharacter = ","
    inputStr.removeAll(where: removeCharacter.contains(_:))
    let newInputStr = inputStr.components(separatedBy: " ")
    for str in newInputStr {
        if str == target.lowercased() {
            return true
        }
    }
    return false
}

//Solution 2


let inputStr = "Hello, world"
let targetStr = "Goodbye"

let result = challenge4(inputStr, targetStr)
print(result)
