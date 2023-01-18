import UIKit

/*
 Challenge 16: Swap two numbers
 
 Swap two positive variable integers, a and b, without using a temporary variable.
 Sample input and output
 • Before running your code a should be 1 and b should be 2; afterwards, b should be 1 and a should be 2.
 */

func challenge16(_ num1: inout Int, _ num2: inout Int) {
  num1 = num1 + num2
  num2 = num1 - num2
  num1 = num1 - num2
  print("Num1:", num1, "Num2:", num2)
}

var num1 = 1
var num2 = 2

challenge16(&num1, &num2)
