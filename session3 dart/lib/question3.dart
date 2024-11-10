// ------3. To-Do List App:
// Create a to-do list program using a List where each item has a description, due date, and
// completion status (as bool). Implement methods to add, remove, and update tasks, including the
// use of for-each loops.
import 'dart:io';

List<dynamic> toDoList = [];
List<dynamic> addList = [];

void main() {
  addButton();
  addButton();
  int index = 1;
  deleteOfToDoList(toDoList, index);
}

addButton() {
  print('Enter To Do Name: ');
  String name = stdin.readLineSync()!;
  print('Enter To Do Description: ');
  String Description = stdin.readLineSync()!;
  print('Do you finished task: ');
  bool completionStatus = bool.parse(stdin.readLineSync()!);
  addList = addToDoList(
      name: name,
      description: Description,
      date: DateTime.now(),
      completionStatus: completionStatus);
  toDoList = updateToDoList(addList);
  print(toDoList);
}

List<dynamic> addToDoList(
    {required String name,
    String description = '',
    required DateTime date,
    bool completionStatus = false}) {
  toDoList.add([name, description, date, completionStatus]);
  return toDoList;
}

void deleteOfToDoList(List<dynamic> toDoList, int index) {
  List<dynamic> afterDelete = toDoList.removeAt(index);
  toDoList = updateToDoList(afterDelete);
  print(toDoList);
}

List<dynamic> updateToDoList(List<dynamic> addToDoList) {
  return addToDoList;
}
