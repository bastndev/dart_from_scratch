/* class Product {
  Product(this.name, this.price); // builder product

  String name; // variable
  num price; // variable
}

void main() {} */

class Product {
  final String name;
  final num price;

  Product(this.name, this.price);
}

void main() {
  final car = Product('BMW', 17000);
  print(car.name);
}
