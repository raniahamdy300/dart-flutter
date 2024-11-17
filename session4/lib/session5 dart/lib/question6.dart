// Exercise 6: OOP - Classes and Objects
// Create a class Car with the following properties:
// - make (String)
// - model (String)
// - year (int)
// Add a method displayInfo() that prints all the car's details. Instantiate a Car object and call its
// displayInfo() method.
// Goal: Introduce classes, objects, and methods.

import 'Car.dart';

void main() {
  Car car1 = Car();
  car1.make = 'Japan';
  car1.model = 'TOYOTA';
  car1.year = 2023;
  car1.displayInfo();
}
