//--- --- -TODO: class "object creation templates"
/* class Product {
  String name = '';
  num price = 0;
} */

// null labels
/* class Product {
  String? name;
  num? price;
} */

//late
/* class Product {
  late String name;
  late num price;
} */

// builder - constructor
class Product {
  String name;
  num price;

  Product(this.name, this.price);
}

void main() {
  final pc = Product('MackBook', 1700);
  final car = Product('BMW', 40000);
  print(car.name);
  print(pc.price);
}
