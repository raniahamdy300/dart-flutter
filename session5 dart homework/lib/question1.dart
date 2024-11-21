// 1. Variables, Functions, and Control Flow
// Write a program that:
// - Prompts the user to input a number.
// - Defines a function `isPrime(int number)` to check if the number is prime.
// - Calls the function and prints "Prime" if the number is prime, "Not Prime" otherwise.
// - Additionally, calculates the factorial of the number using a loop and prints the result.
// Goal: Practice control flow, function definition, and loops.

import 'dart:io';

void main() {
  stdout.write('Enter number: ');
  int number = int.tryParse(stdin.readLineSync()!) ?? 0;

  //prime number
  bool prime = isPrime(number);
  if (prime) {
    print('$number is prime');
  } else {
    print('$number is not prime');
  }

  //factorial
  factorialOfNumber(number);
}

bool isPrime(int number) {
  if (number <= 1) return false; // Prime number is > 1
  for (int i = 2; i < number; i++) {
    if (number % i == 0) return false;
  }
  return true;
}

void factorialOfNumber(int number) {
  int factorial = 1;
  for (int i = 0; i < number; i++) {
    factorial *= number - i; // f3    3*2*1  number*number-1*number-2  4*3*2
  }
  print(' factorial of $number!= $factorial ');
}
