// 8. Range Checker Program:
// Write a Dart program that checks if a number is within a specified range using logical operators and
// prints the result
import 'dart:io';

void main() {
  print('Enter your number: ');
  double number = double.parse(stdin.readLineSync()!);

  rangeChecker(number: number);
}

void rangeChecker({required double number}) {
  if (number > 0 && number < 100) {
    print('$number is in the range');
  } else {
    print('$number out of range, number must be between 1 and 20');
  }
}
