// 5. Class Creation and Dot Operator Usage:
// Create a class with a few properties and methods. Instantiate the class and use the dot operator to
// access and print its properties and methods.

void main() {
  Human human1 = Human();
  human1.name = 'Ahmed';
  human1.tall = 170;
  human1.age = 37;
  human1.weight = 70;
  print(
      'Your name is ${human1.name}, you are ${human1.age} years old, you are ${human1.weight} kg and ${human1.tall} m ');
  human1.Eating(human1.name);
  human1.running(human1.name);
}

class Human {
  String? name;
  double? age;
  double? tall;
  double? weight;

  void running(String? name) {
    print('$name is Running');
  }

  void Eating(String? name) {
    print('$name is Eating');
  }
}
