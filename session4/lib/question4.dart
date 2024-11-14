// Collection Operations
// Topic: Lists, Sets, Maps
// Exercise:
// - Create a list of numbers, add a few elements, remove one, and display the final list.
// - Create a set with some duplicate elements and print the set to show that duplicates are removed.
// - Create a map with keys as student names and values as grades. Print a student's grade by accessing their name in
// the map.

void main() {
// list
  List<num> numbersList = [1, 2, 3, 4];
  numbersList.remove(2);
  print(numbersList);
// Set can't contain duplicated items
  Set<num> numberSet = {2, 3, 5, 6, 8, 5};
  print(numberSet);
// map
  Map<String, String> studentGrades = {
    'ahmed': 'pass',
    'mohamed': 'Good',
    'Ayman': 'v.Good',
    'Mona': 'Excellent'
  };

  for (var element in studentGrades.keys) {
    print('$element: ${studentGrades[element]}');
  }
}
