// 3. Null Safety, Functions, and Higher-Order Functions
// Write a function `findLargest(List<int>? numbers)` that:
// - Checks if the input list is null or empty. If so, returns null.
// - Otherwise, finds and returns the largest number in the list using the `reduce` method.
// - Call the function with `[10, 3, 45, 7]` and `null`, and print the results.

void main() {
  var results = findLargest([10, 3, 45, 7]);

  print(results);
}

dynamic findLargest(List<int> numbers) {
  if (numbers!.isEmpty || numbers == null) {
    return null;
  } else {
    return reduce(numbers);
  }
}

int reduce(List<int> numbers) {
  numbers.sort();
  return numbers.last;
}
