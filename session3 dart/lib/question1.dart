// 1. Basic Calculator:
// Create a Dart program that takes two numbers as input and performs addition, subtraction,
// multiplication, and division using variables, arithmetic operators, and functions. Also, include
// optional parameters for different operations (e.g., addition of multiple numbers).
import 'dart:io';

void main() {
  double number1 = double.parse(stdin.readLineSync()!);
  double number2 = double.parse(stdin.readLineSync()!);

  calculator(number1, number2, '*');
}

void calculator(double number1, double number2, [String operator = '']) {
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
      print(number2 > 0 ? number1 / number2 : 'Can\'t divided dy zero');
      break;
    case '%':
      print(number1 % number2);
      break;
    default:
      print(number1);
  }
}
