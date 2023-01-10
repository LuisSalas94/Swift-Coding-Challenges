import UIKit

/*
 Challenge 8: Find pangrams
 Write a function that returns true if it is given a string that is an English pangram, ignoring
 letter case.
 Tip: A pangram is a string that contains every letter of the alphabet at least once.
 Sample input and output
 • The string “The quick brown fox jumps over the lazy dog” should return true.
 • The string “The quick brown fox jumped over the lazy dog” should return false,
 because it’s missing the S.
 */

func challenge8(_ input:String) -> Bool {
   return Set(input.lowercased().filter{!$0.isWhitespace}).count == 26
}

let input = "The quick brown fox jumped over the lazy dog"
let result = challenge8(input)
print(result)
