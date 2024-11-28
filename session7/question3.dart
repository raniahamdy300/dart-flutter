// 3. OOP, Constructors, and Named Parameters
// Write a program that:
// - Defines a class `Product` with:
// - Properties: `String name`, `double price`, `int stock`.
// - A constructor using named parameters with default values for `price` and `stock` (e.g., `price =
// 0.0`, `stock = 0`).
// - A method `sell(int quantity)` that reduces the stock and prints a confirmation message.
// - In `main()`, create an instance of `Product`, sell a few units, and print the updated stock.

void main() {
  product product1 = product(stock: 20);
  product1.sell(5);
}

class product {
  String? name;
  double price;
  int stock;

  product({double this.price = 0.0, int this.stock = 0});

  void sell(int quantity) {
    stock = this.stock - quantity;
    print('Stock =  $stock');
  }
}
