// Exercise 8: Inheritance
// Create a class ElectricCar that inherits from the Car class. Add a new property batteryCapacity (int)
// and a method displayBatteryStatus() that prints the battery capacity. Override the displayInfo()
// method to include battery details.
// Goal: Practice inheritance and method overriding.
import 'Car.dart';

void main() {
  ElectricCar ecar1 = ElectricCar();
  ecar1.batterycapacity = 20;
  ecar1.make = 'chiness';
  ecar1.model = 'Big Four';
  ecar1.year = 2002;
  ecar1.displayBatteryStat();
  ecar1.displayInfo();
}

class ElectricCar extends Car {
  int _batteryCapacity = 0;
  set batterycapacity(int value) {
    this._batteryCapacity = value;
  }

  int get getbatterycapacity {
    return this._batteryCapacity;
  }

  void displayBatteryStat() {
    print('battery Capacity  $getbatterycapacity');
  }

  @override
  void displayInfo() {
    print(
        'The car made in $getmake in $year,  Model $getmodel and battery Capacity  $getbatterycapacity');
  }
}
