// Exercise 10: OOP - Mixins
// Create a mixin Logger with a method log(String message) that prints a log message. Apply the mixin
// to a User class that contains name and email properties. Use the log method in the User class to log
// messages like "User created" and "User deleted."
// Goal: Learn about mixins and their application in Dart.
void main() {
  User user1 = User();
  user1.name = 'ahmed';
  user1.email = 'aa@gmail.com';
  user1.log(' Created');
}

mixin logger {
  void log(String message) {
    print('$message');
  }
}

class User with logger {
  String? name;
  String? email;

  @override
  void log(String message) {
    print('$name account has $message');
  }
}
