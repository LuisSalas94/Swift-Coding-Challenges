/*
 Challenge 12: Reverse the words in a string
 Write a function that returns a string with each of its words reversed but in the original order, without using a loop.
 Sample input and output
 • The string “Swift Coding Challenges” should return “tfiwS gnidoC segnellahC”.
 • The string “The quick brown fox” should return “ehT kciuq nworb xof”.
 */

func challenge12 (_ input: String) -> String {
    let inputArr = input.components(separatedBy: " ")
    var result = ""
    
    for word in inputArr {
        result.append(String(word.reversed()))
        result.append(" ")
    }
    
    return result
}

let input = "The quick brown fox"
let result = challenge12(input)
print(result)
