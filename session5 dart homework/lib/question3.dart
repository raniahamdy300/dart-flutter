// 3. Null Safety, Strings, and Higher-Order Functions
// Write a function `formatNames(List<String?> names)` that:
// - Removes null values from the list.
// - Capitalizes the first letter of each name using String methods.
// - Returns the formatted list as a single string, with names separated by commas.
// Test it with the list `["john", null, "alice", "bob"]`.
// Goal: Understand null safety, string manipulation, and higher-order functions.

void main() {
  formatNames(["john", '', "alice", "bob"]);
}

void formatNames(List<String> names) {
  names.removeWhere((e) => e == '');
  for (int i = 0; i < names.length; i++) {
    String firstLetter = names[i].substring(0, 1).toUpperCase();
    String restOfWord = names[i].substring(1);
    names[i] = firstLetter + restOfWord;
  }
  //Returns the formatted list as a single string, with names separated by commas.
  String listWithSeperatedComma = names.join(', ');

  //or
  // String listWithSeperatedComma = names.map((item) => item).join(',');

  print(names);

  print(listWithSeperatedComma);
}
