// 2. Classes, Inheritance, and Static Methods
// Write a program that:
// - **Creates a base class `Vehicle` with:**
// - Properties: `String brand` and `int year`.
// - A method `describe()` that prints the brand and year.
// - **Creates a subclass `Car` that:**
// - Extends `Vehicle`.
// - Adds a property `int mileage`.
// - Overrides the `describe()` method to include mileage.
// - Adds a static method `Car.totalMileage(List<Car> cars)` to calculate and print the total mileage of
// a list of cars.
// - **In `main()`, create a list of `Car` objects, calculate the total mileage, and print the details of each
// car.

void main() {
  List<Car> cars = [
    Car('fiat', 2024, 20),
    Car('mercides', 2025, 50),
    Car('kia', 2022, 30)
  ];

  // to calculate total mileage
  Car.totalMileage(cars);

  // to print details for each car
  for (var i = 0; i < cars.length; i++) {
    cars[i].describe();
  }
}

class Vehicle {
  String? brand;
  int? year;

  Vehicle(this.brand, this.year);
  void describe() {
    print('barna $brand,  year $year');
  }
}

class Car extends Vehicle {
  int? mileage;
  Car(
    super.brand,
    super.year,
    this.mileage,
  );
  @override
  void describe() {
    print('barna $brand,  year $year, mileage $mileage');
  }

  static void totalMileage(List<Car> cars) {
    int sum = 0;
    for (var i = 0; i < cars.length; i++) {
      //print(cars[i].mileage);
      sum += cars[i].mileage!;
    }
    print('Total mileage = $sum');
  }
}
