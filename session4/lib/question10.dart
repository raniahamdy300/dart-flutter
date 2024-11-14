// Custom Message Function
// Topic: Optional and Named Parameters
// Exercise: Write a function displayMessage that takes a required String message, an optional String name, and a named
// int repeat with a default value of 1. The function should print the message and the name repeat times. If name is not
// provided, it should print the message alone.
void main() {
  displayMessage(Message: 'you must go to sleep at 10 pm');
  displayMessage(
      Message: 'you must go to sleep at 10 pm',
      name: 'Time of sleep',
      repeat: 3);
}

void displayMessage(
    {required String Message, String name = '', int repeat = 1}) {
  for (var i = 0; i < repeat; i++) {
    if (name == '') {
      print(Message);
    } else {
      print('$name Message = $Message');
    }
  }
}
