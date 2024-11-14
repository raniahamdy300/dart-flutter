// Conditional Logic for User Roles
// Topic: Conditional statements, If-Else, Logical operators
// Exercise: Write a program that checks the role of a user (e.g., admin, user, guest). Print 'Welcome Admin' if the role is
// admin, 'Welcome User' if it's user, and 'Welcome Guest' otherwise.

import 'dart:io';

void main() {
  print('Enter user role:');
  String userRole = stdin.readLineSync()!;

  if (userRole == 'admin') {
    print('welcome $userRole');
  } else if (userRole == 'user') {
    print('welcome $userRole');
  } else {
    print('welcome Guest');
  }
}
