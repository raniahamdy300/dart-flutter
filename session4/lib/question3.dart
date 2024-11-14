// Simple Calculator
// Topic: Arithmetic operators
// Exercise: Build a program that takes two numbers as input and performs addition, subtraction, multiplication, and
// division. Display each result to the console.
import 'dart:io';

void main() {
  print('Enter the first number');
  int number1 = int.parse(stdin.readLineSync()!);
  print('Enter the second number');
  int number2 = int.parse(stdin.readLineSync()!);
  print('Enter the operator');
  String operator = (stdin.readLineSync()!);
  switch (operator) {
    case '+':
      print(number1 + number2);
      break;
    case '-':
      print(number1 - number2);
      break;
    case '*':
      print(number1 * number2);
      break;
    case '/':
      if (number1 > 0) {
        print(number1 + number2);
      }
      break;
    default:
      print('Enter any of this operator + / - *');
  }
}
