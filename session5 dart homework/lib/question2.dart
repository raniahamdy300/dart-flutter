// 2. Collections, Loops, and Conditional Statements
// Write a function `processNumbers` that:
// - Accepts a list of integers.
// - Filters out numbers less than 5.
// - Squares each remaining number.
// - Returns the sum of the squared numbers.
// Use the function with the list `[2, 4, 6, 8, 10]` and print the result.
// Goal: Learn to work with collections, loops, and filtering conditions.
import 'dart:math';

void main() {
  processNumbers([2, 4, 6, 8, 10]);
}

void processNumbers(List<int> intNumbers) {
  int sumOfNumbers = 0;
  for (var i = 0; i < intNumbers.length; i++) {
    intNumbers.removeWhere((element) => element < 5);
    intNumbers[i] = pow(intNumbers[i], 2).toInt();
    sumOfNumbers += intNumbers[i];
  }

  print(intNumbers);
  print('The Total of numbers = $sumOfNumbers');
}
