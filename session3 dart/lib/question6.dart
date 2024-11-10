//------------ 6. Working with Maps - Student Details:
// - Task 1: Create a map representing a student with keys for name, age, and grade. Add, update,
// and remove entries from the map, printing the map after each operation.
// - Task 2: Iterate over the map and print each key-value pair.

Map<String, dynamic> student = {};
void main() {
  student = <String, dynamic>{'name': 'ahmed', 'age': 20, 'grade': 60};
  print(student);
  update(name: 'mohamed', age: 30, grade: 25);
  print(student);

  // student.forEach((key, value) {
  //   print('$key : $value');
  // });
}

void update({required String name, required int age, required double grade}) {
  student['name'] = name;
  student['age'] = age;
  student['grade'] = grade;
}

// can't delete