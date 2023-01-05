import UIKit

//Challenge 2: Is a string a palindrome?

//Write a function that accepts a String as its only parameter, and returns true if the string
//reads the same when reversed, ignoring case.


func challenge2(_ input: String) -> Bool {
    let newStr = Array(input.lowercased().reversed())
    let oldStr = Array(input.lowercased())
    return newStr == oldStr
}

let str = "rotator"
let str2 = "Rats live on no evil star"
let str3 = "Hello, world"
let str4 = "Never odd or even"
challenge2(str3)
