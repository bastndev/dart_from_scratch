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

  // Product(this.name, this.price);
}

void main() {
  final car = Product(name: 'BMW', suppliers: ['333'], price: 40000, id: '1');

  final suppliers = car.suppliers;
  suppliers.add('a');
  print(suppliers);
  print(car.suppliers);

// Copy no replace
  final suppliersCopy = [...suppliers];
  suppliersCopy.add('b');
  print(suppliers);
  print(suppliersCopy);
}
