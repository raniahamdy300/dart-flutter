// 1. Variables, Collections, and Functions
// Write a program that:
// - Accepts a list of integers as input.
// - Defines a function `calculateStats(List<int> numbers)` that:
// - Calculates the sum of all numbers.
// - Finds the maximum and minimum values in the list.
// - Returns a formatted string with these statistics.
// - Call the function with `[5, 12, 7, 3, 18]` and print the result.

main() {
  print(calculateStats([5, 12, 7, 3, 18]));
}

String calculateStats(List<int> numbers) {
  int sum = 0;
  for (var element in numbers) {
    sum += element;
  }
  numbers.sort();
  int max = numbers.last;
  int min = numbers.first;

  return 'sum of numbers = $sum, max valu = $max, min value = $min';
}
