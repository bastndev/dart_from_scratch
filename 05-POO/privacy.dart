// ignore_for_file: unnecessary_getters_setters

/* class Product {
  final String id;
  final String name;
  final List<String> suppliers;
  num price;
  int _quantity = 0;

  Product({
    required this.id,
    required this.name,
    required this.suppliers,
    required this.price,
  });
}

void main() {
  final proof = Product(id: 'id', name: 'name', price: 300, suppliers: []);
  proof._quantity;
}
 */

class Product {
  final String id;
  final String name;
  final List<String> suppliers;
  num price;
  int _quantity = 0;

  int get quantity => _quantity;

  set quantity(int qty) => _quantity = qty;

  Product({
    required this.id,
    required this.name,
    required this.suppliers,
    required this.price,
  });
}

void main() {}
