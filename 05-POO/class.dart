//--- --- -TODO: class "object creation templates"
/* class Product {
  String name = '';
  num price = 0;
} */

/* class Product {
  String? name;
  num? price;
} */

/* class Product {
  late String name;
  late num price;
} */

class Product {
  String name;
  num price;

  Product(this.name, this.price);
}

void main() {}
