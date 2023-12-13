/* class Product {
  final String id;
  final String name;
  final List<String> suppliers;
  num price;
  int quantity;

  Product({
    required this.id,
    required this.name,
    required this.suppliers,
    this.quantity = 0,
    required this.price,
  });

}

void main() {
  final car = Product(name: 'BMW', suppliers: ['333'], price: 40000, id: '1');

  final suppliers = car.suppliers;
  suppliers.add('a');
  print(suppliers);
  print(car.suppliers);

// Copy no replace or add
  final suppliersCopy = [...suppliers];
  suppliersCopy.add('b');
  print(suppliers);
  print(suppliersCopy);
}
 */

//builded nombrado
class Product {
  final String id;
  final String name;
  final List<String> suppliers;
  num price;
  int quantity;

  Product({
    required this.id,
    required this.name,
    required this.suppliers,
    this.quantity = 0,
    required this.price,
  });

  Product.empty({
    this.id = '',
    this.name = '',
    this.price = 0,
    this.quantity = 0,
    this.suppliers = const [],
  });

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      quantity: map['quantity'],
      name: map['name'],
      price: map['price'],
      suppliers: [],
    );
  }
}

void main() {
  final car = Product(name: 'BMW', suppliers: ['333'], price: 40000, id: '1');

  final suppliers = car.suppliers;
  suppliers.add('a');
  print(suppliers);
  print(car.suppliers);

// Copy no replace or add
  final suppliersCopy = [...suppliers];
  suppliersCopy.add('b');
  print(suppliers);
  print(suppliersCopy);
}
