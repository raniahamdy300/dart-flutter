// 5. Mixins, Inheritance, and Method Overriding
// Create a program that:
// - Defines a mixin `Fly` with:
// - A method `fly()` that prints "I can fly!".
// - Creates a base class `Bird` with:
// - A method `chirp()` that prints "Chirp chirp!".
// - Creates a class `Parrot` that:
// - Extends `Bird`.
// - Mixes in `Fly`.
// - Overrides the `chirp()` method to print "Parrot is chirping!".
// - In `main()`, create a `Parrot` instance and call `fly()` and `chirp()`.
void main() {
  Parrot parrot1 = Parrot();
  parrot1.fly();
  parrot1.chirp();
}

class Bird {
  chirp() {
    print('Chirp Chirp!');
  }
}

mixin Fly {
  fly() {
    print('I can fly');
  }
}

class Parrot extends Bird with Fly {
  @override
  chirp() {
    print('parrot is chirpint');
  }
}
