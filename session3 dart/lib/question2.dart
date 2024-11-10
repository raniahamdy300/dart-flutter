// 2. Grocery List Manager:
// Implement a program that uses a List to store grocery items. It should allow adding, removing, and
// displaying items. Use functions with return types and optional/named parameters. Make sure to
// handle possible null values.
import 'dart:io';

void main() {
  chooseAction();
}

void chooseAction() {
  int actionNumber;
  do {
    print(
        'Choose number of Action you want:\n 1- add \n 2- remove \n 3- Display');
    actionNumber = int.parse(stdin.readLineSync()!);
    if (actionNumber == 1) {
      try {
        print('Enter number of item = ');
        int numberOfItem = int.parse(stdin.readLineSync()!);
        groceryItemStore(action: actionNumber, numOfItem: numberOfItem);
      } on Exception catch (e) {
        print('enter integer number only $e');
      }
    }
    if (actionNumber == 2) {
      print('Enter item name to remove: ');
      String itemName = (stdin.readLineSync()!);
      groceryItemStore(action: actionNumber, itemName: itemName);
    }
    if (actionNumber == 3) {
      groceryItemStore(action: actionNumber);
    }
  } while (actionNumber >= 1 && actionNumber < 3);
}

List<String> groceryItem = [];

void groceryItemStore(
    {required int action, int numOfItem = 1, String itemName = ''}) {
  if (action == 1) {
    List<String> addItem = [];
    for (int i = 0; i < numOfItem; i++) {
      print('Enter Item Name ${i + 1}:');
      String itemNameadded = stdin.readLineSync()!;
      addItem =
          addGroceryItem(groceryItem: groceryItem, addItemName: itemNameadded);
    }
    groceryItem = updateGroceryItem(addItem);
    print(groceryItem);
  }
  if (groceryItem.contains(itemName)) {
    if (action == 2) {
      List<String> removedGroceryItem = removeGroceryItem(
          groceryItem: groceryItem, removedItemName: itemName);
      groceryItem = updateGroceryItem(removedGroceryItem);
      print(groceryItem);
    }
  }
  if (action == 3) {
    groceryItem = updateGroceryItem(groceryItem);
    displayItem(groceryItem: groceryItem);
  }
}

List<String> addGroceryItem(
    {required List<String> groceryItem, required String addItemName}) {
  groceryItem.add(addItemName);
  return groceryItem;
}

List<String> removeGroceryItem(
    {required List<String> groceryItem, required String removedItemName}) {
  groceryItem.remove(removedItemName);
  return groceryItem;
}

List<String> updateGroceryItem(List<String> groceryItem) {
  return groceryItem;
}

void displayItem({required List<String> groceryItem}) {
  print(groceryItem);
}
