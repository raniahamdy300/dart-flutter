// 5. Mixins, Abstract Classes, and Enum
// Write a program that:
// - **Defines an abstract class `Appliance` with:**
// - A method `turnOn()`.
// - An abstract method `operate()`.
// - **Creates a mixin `TimerFeature` that:**
// - Adds a method `setTimer(int minutes)` that prints "Timer set for $minutes minutes.".
// - **Defines an enum `ApplianceType` with values `WASHER`, `DRYER`, and `OVEN`.**
// - **Creates a class `Washer` that:**
// - Extends `Appliance`.
// - Mixes in `TimerFeature`.
// - Implements `operate()` to print "Washing clothes...".
// - **In `main()`, create an instance of `Washer`, turn it on, set a timer, and operate it.

void main() {
  Washer washer1 = Washer();
  washer1.turnOn();
  washer1.setTimer(30);
  washer1.operator();
}

abstract class Appliance {
  void turnOn();
  void operator();
}

mixin TimerFeature {
  void setTimer(int minutes) {
    print('Timer set for $minutes minutes.');
  }
}

enum ApplianceType { WASHER, DRYER, OVEN }

class Washer extends Appliance with TimerFeature {
  @override
  void operator() {
    print('Washing clothes...');
  }

  @override
  void turnOn() {
    print('Turn on');
  }
}
