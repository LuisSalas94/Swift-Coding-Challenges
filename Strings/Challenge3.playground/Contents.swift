import UIKit

/*
 Challenge 3: Do two strings contain the same characters?
 Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.
 */

//Solution1
func challenge3(_ input1: String, _ input2: String) -> Bool {
    if input1.count == input2.count {
       return Set(input1) == Set(input2)
    }
    return false
}

//Solution2
func challenge3(_ input1: String, _ input2: String) -> Bool {
    let array1 = Array(input1)
    let array2 = Array(input2)
    return array1.sorted() == array2.sorted()
}

let str1 = "abc"
let str2 = "cbAa"

let result = challenge3(str1, str2)
print(result)


