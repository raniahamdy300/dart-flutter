// 4. OOP, Polymorphism, and Interfaces
// Create a program with the following:
// Programming Exercises: Comprehensive Challenges
// - An interface `Shape` with:
// - A method `double area()`.
// - Two classes `Circle` and `Rectangle` that:
// - Implement the `Shape` interface.
// - Provide implementations for the `area()` method.
// - Use appropriate constructors to initialize properties (radius for Circle, length and width for Rectangle).
// - In `main()`, create instances of `Circle` and `Rectangle` and print their areas.
import 'dart:math';

void main() {
  Circle c1 = Circle(radius: 2);
  print(c1.area());

  Rectangular rec1 = Rectangular(length: 12, width: 10);
  print(rec1.area());
}

abstract class Shape {
  double area();
}

class Circle implements Shape {
  double radius = 0;
  Circle({required this.radius});

  @override
  double area() {
    return pi * radius * radius;
  }
}

class Rectangular implements Shape {
  double length = 0;
  double width = 0;
  Rectangular({required this.length, required this.width});

  @override
  double area() {
    return length * width;
  }
}
