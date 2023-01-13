/*
 Challenge 15: Recreate the pow() function
 Create a function that accepts positive two integers, and raises the first to the power of the second.
 Tip: If you name your function myPow() or challenge18(), you’ll be able to use the  built-in pow() for your tests. The built-in pow() uses doubles, so you’ll need to typecast.
 Sample input and output
 • The inputs 4 and 3 should return 64, i.e. 4 multiplied by itself 3 times.
 • The inputs 2 and 8 should return 256, i.e. 2 multiplied by itself 8 times.
 */

func challenge15(_ input1: Int, _ input2: Int) -> Int {
    var result: Int = 1
    
    for _ in 1...input2 {
        result *= input1
    }
    
    return result
    
}

let input1 = 4
let input2 = 3
challenge15(input1, input2)
