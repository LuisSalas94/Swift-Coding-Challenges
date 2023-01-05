import UIKit

//Challenge 1: Are the letters unique?
/*Write a function that accepts a String as its only parameter, and returns true if the string has
only unique letters, taking letter case into account.*/

//Solution1
func challenge1(_ input: String) -> Bool {
   var checkedCharacters = [Character]()
    
    for letter in input {
        if checkedCharacters.contains(letter) {
            return false
        } else {
          checkedCharacters.append(letter)
        }
    }
    return true
}
 

let solution1 = challenge1("No duplicates")
print(solution1)

//Solution2
func challenge1(_ input: String) -> Bool{
    return Set(input).count == input.count
}

let solution2 = challenge1("No duplicates")
print(solution2)
