// Exercise 9: Polymorphism
// Create a base class Shape with a method calculateArea(). Create two derived classes:
// - Circle with a property radius.
// - Rectangle with properties length and width.
// Override the calculateArea() method in both classes. Write a program to calculate and print the area
// of a circle and a rectangle.
// Goal: Understand polymorphism and method overriding.
void main() {
  Rectangular rec1 = Rectangular();
  Circle circle1 = Circle();
  rec1.length = 10;
  rec1.width = 7;
  rec1.calculateArea();
  circle1.radius = 5;
  circle1.calculateArea();
}

class Shape {
  void calculateArea() {}
}

class Circle extends Shape {
  double radius = 0;

  @override
  void calculateArea() {
    print('The circle\'s area = ${3.14 * radius * radius}}');
  }
}

class Rectangular extends Shape {
  double length = 0;
  double width = 0;

  @override
  void calculateArea() {
    print('The rectangular\'s area = ${length * width}');
  }
}
