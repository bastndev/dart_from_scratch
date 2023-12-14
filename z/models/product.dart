class Product {
  final String id;
  final String name;
  int amount;
  num price;

  Product({
    required this.id,
    required this.name,
    this.amount = 0,
    required this.price,
  });

  @override
  String toString() {
    return 'id: $id, name: $name, amount: $amount, price: $price';
  }
}
