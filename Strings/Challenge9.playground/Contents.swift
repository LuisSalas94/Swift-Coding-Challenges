import UIKit

/*
 Challenge 9: Vowels and consonants
 Given a string in English, return a tuple containing the number of vowels and consonants.
 Tip: Vowels are the letters, A, E, I, O, and U; consonants are the letters B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, W, X, Y, Z.
 Sample input and output
 • The input “Swift Coding Challenges” should return 6 vowels and 15 consonants.
 • The input “Mississippi” should return 4 vowels and 7 consonants.
 */

func challenge9(_ input: String) -> String {
    let vowels: [Character] = ["a", "e", "i", "o", "u"]
    let consonantsCount = String(input.filter { !vowels.contains($0) }).filter{!$0.isWhitespace}
    let vowelsCount = String(input.filter { vowels.contains($0) })
    return "The input has \(vowelsCount.count) vowels and \(consonantsCount.count) consonants."
}

let input = "Swift Coding Challenges"
let input2 = "Mississippi"
let result = challenge9(input2)
print(result)
