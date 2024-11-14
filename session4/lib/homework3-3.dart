// 3. To-Do List App:
// Create a to-do list program using a List where each item has a description, due date, and
// completion status (as bool). Implement methods to add, remove, and update tasks, including the
// use of for-each loops.

void main() {
  List<Map<String, dynamic>> toDoList = [];

  addToDoList(
      description: 'Reading book',
      dueDate: DateTime(2024, 11, 2),
      completionStatus: false,
      toDoList: toDoList);
  addToDoList(
      description: 'playing ',
      dueDate: DateTime(2024, 10, 4),
      completionStatus: false,
      toDoList: toDoList);

  removeToDo(description: 'playing', toDoList: toDoList);

  updateToDo(
      description: 'Reading book', completionStatus: true, toDoList: toDoList);
}

void addToDoList(
    {required String description,
    required DateTime dueDate,
    required bool completionStatus,
    required List<Map<String, dynamic>> toDoList}) {
  var toDo = {
    'description': description,
    'dueDate': dueDate,
    'status': completionStatus
  };
  toDoList.add(toDo);
}

void removeToDo(
    {required String description,
    required List<Map<String, dynamic>> toDoList}) {
  var indexOfToDoRemoved;
  for (int i = 0; i < toDoList.length; i++) {
    if (toDoList[i]['description'] == description) {
      indexOfToDoRemoved = i;
      break;
    }
    toDoList.removeAt(indexOfToDoRemoved);
  }
}

void updateToDo(
    {required String description,
    required bool completionStatus,
    required List<Map<String, dynamic>> toDoList}) {
  for (int i = 0; i < toDoList.length; i++) {
    if (toDoList[i]['description'] == description) {
      toDoList[i]['status'] == completionStatus;
      break;
    }
  }
}
