// Exercise 4: Loops
// Write a Dart program to print the first 10 numbers in the Fibonacci sequence.
// Goal: Practice loops and basic algorithmic thinking.

// 0, 1, 1, 2, 3, 5, 8, 13, 21, 34

import 'dart:io';

void main() {
// first solution
  for (var i = 0; i < 10; i++) {
    print(fibonacci(i));
  }

// second solution
  stdout.write('Enter Fibonacci sequence number: ');
  int number = int.parse(stdin.readLineSync()!);

  List<int> output = fibonacciFun(number);
  print(output);
}

// first solution

//F(n) = F(n-1) + F(n-2) where n>=3.
int fibonacci(int number) {
  // The first two numbers in the sequence are 0 and 1
  if (number == 0 || number == 1) {
    return number;
  }
  return fibonacci(number - 1) + fibonacci(number - 2);
}

// second solution

List<int> fibonacciFun(int number) {
  List<int> fibonacciList = [1, 1];
  for (var i = 0; i < number; i++) {
    fibonacciList.add(fibonacciList[i] + fibonacciList[i + 1]);
  }
  return fibonacciList;
}
