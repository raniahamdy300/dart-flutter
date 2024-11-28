//1. Functions, Exception Handling, and Loops
// Write a program that:
// - Defines a function `divideNumbers(int a, int b)` that:
// - Tries to divide `a` by `b`.
// - Throws an exception if `b` is zero with the message "Cannot divide by zero!".
// - Catches the exception and prints the error message.
// - Returns the result if no exception is thrown.
// - Calls the function with different inputs and prints the results.

void main() {
  divideNumbers(10, 0);
  divideNumbers(20, 10);
}

void divideNumbers(int a, int b) {
  try {
    if (b != 0) a / b;
    print(a ~/ b);
  } catch (e) {
    print('Cannot divide by zero!');
  }
}
