/*
 Challenge 10: Three different letters
 Write a function that accepts two strings, and returns true if they are identical in length but
 have no more than three different letters, taking case and string order into account.
 Sample input and output
 • The strings “Clamp” and “Cramp” would return true, because there is one letter difference.
 • The strings “Clamp” and “Crams” would return true, because there are two letter differences.
 • The strings “Clamp” and “Grams” would return true, because there are three letter differences.
 • The strings “Clamp” and “Grans” would return false, because there are four letter differences.
 • The strings “Clamp” and “Clam” would return false, because they are different lengths.
 • The strings “clamp” and “maple” should return false. Although they differ by only one
 letter, the letters that match are in different positions.
 */

//Solution1
func challenge10(_ input1: String, _ input2: String) -> Bool {
    if input1.count != input2.count {
        return false
    }
    
    var counter: Int = 0
    for str in input1 {
        if !input2.contains(str){
            counter += 1
        }
    }
    
    return counter <= 3
}


//Solution2
func challenge10(first: String, second: String) -> Bool {
    
    guard first.count == second.count else { return false }
    
    let firstArray = Array(first)
    let secondArray = Array(second)
    var differences = 0
    
    for (index, letter) in firstArray.enumerated() {
        if secondArray[index] != letter {
            differences += 1
            
            if differences == 4 {
                return false
            }
        }
    }
    
    return true
}

let input1 = "clamp"
let input2 = "maple"
let result = challenge10(first: input1, second: input2)
print(result)

