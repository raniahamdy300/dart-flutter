// Inventory Management System
// Topic: Classes, Objects, Encapsulation
// Exercise: Define a class Product with properties like name, price, and quantity. Include methods to update the quantity
// and calculate the total price for a given quantity. In the main function, create a Product object, update the quantity, and
// print the total price.

void main() {
  Product paper = Product(productName: 'paper');
  paper.updateQuantity(quantity: 50);
  paper.totalQuantityPrice(priceOfOnePiece: 2);
}

class Product {
  String? name;
  double price = 0;
  int quantity = 0;

  Product({required this.name});
  

  int updateQuantity({required int quantity}) {
    return this.quantity = quantity;
  }

  void totalQuantityPrice({required double priceOfOnePiece}) {
    this.price = priceOfOnePiece;
    print(
        'The price of ${this.name} of quantity $quantity = ${this.quantity * this.price}');
  }
}
