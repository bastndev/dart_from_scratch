class Product {
  final String id;
  final String name;
  final List<String> suppliers;
  num price;
  int quantity;

  Product(
      {required this.id,
      required this.name,
      required this.price,
      this.quantity = 0,
      required this.suppliers});
}

void main() {
  final car = Product(name: 'BMW', price: 40000, suppliers: [], id: '1');
  print(car);
}
