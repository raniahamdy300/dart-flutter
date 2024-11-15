// 3. To-Do List App:
// Create a to-do list program using a List where each item has a description, due date, and
// completion status (as bool). Implement methods to add, remove, and update tasks, including the
// use of for-each loops.

import 'Todo.dart';

void main() {
  List<Todo> toDoList = [
    Todo(description: 'Reading', duedate: DateTime(2024), status: true),
    Todo(description: 'gym', duedate: DateTime(2023), status: false),
    Todo(description: 'playing', duedate: DateTime(2022), status: true)
  ];

  addToDo('k', DateTime(2003), false, toDoList);
  for (var e in toDoList) {
    print('${e.description} ${e.duedate.toString()}  ${e.status.toString()}');
  }
}

void addToDo(
    String description, DateTime date, bool status, List<Todo> toDoList) {
  toDoList.add(Todo(description: description, duedate: date, status: status));
}

void removeToDoByItem(
    {required String description, required List<Todo> toDoList}) {
  var itemToBeRemoved;
  for (var item in toDoList) {
    if (item.description == description) {
      itemToBeRemoved = item;
      break;
    }
  }
  toDoList.remove(itemToBeRemoved);
}

void updateToDoByItem(
    {required String description,
    required bool status,
    required List<Map<String, dynamic>> toDoList}) {
  for (var item in toDoList) {
    if (item['description'] == description) {
      item['completionStatus'] = status;
    }
  }
}

void removeToDo({required String description, required List<Todo> toDoList}) {
  var indexOfToDoRemoved;
  for (int i = 0; i < toDoList.length; i++) {
    if (toDoList[i].description == description) {
      indexOfToDoRemoved = i;
      break;
    }
    toDoList.removeAt(indexOfToDoRemoved);
  }
}

void updateToDo(
    {required String description,
    required bool completionStatus,
    required List<Todo> toDoList}) {
  for (int i = 0; i < toDoList.length; i++) {
    if (toDoList[i].description == description) {
      toDoList[i].status == completionStatus;
      break;
    }
  }
}
