// Exercise 7: Encapsulation
// Add private properties _make and _model to the Car class created in Exercise 6. Add getters and
// setters for these properties. Modify the class to demonstrate encapsulation.
// Goal: Understand access control and encapsulation principles.

import 'Car.dart';

void main() {
  Car car2 = Car();
  car2.make = 'German';
  car2.model = 'Skoda';
  car2.year = 2024;
  car2.displayInfo();
}
