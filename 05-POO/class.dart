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

// builder
class Product {
  String name;
  num price;

  Product(this.name, this.price);
}

void main() {}
