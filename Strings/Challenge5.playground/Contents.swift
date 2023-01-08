import UIKit

/*
 Challenge 5: Count the characters
 Write a function that accepts a string, and returns how many times a specific character appears,
 taking case into account.
 */

//Solution1
func challenge5(_ input: String, _ target: Character) -> String {
    var count: Int = 0
    
    for char in input {
        if char == target {
            count += 1
        }
    }
    
    return "The letter \(target) appears \(count) times in \(input)"
}


//Solution2
func challenge5(_ input: String, _ count: Character) -> Int {
    return input.reduce(0) {
        $1 == count ? $0 + 1 : $0
    }
}

 
let target: Character = "i"
let input = "Hacking with Swift"
let result = challenge5(input, target)
print(result)


