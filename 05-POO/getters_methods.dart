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

  bool existsProduct() => quantity > 0;
  void add(int qty) => quantity += qty;
  bool subtract(int qty) {
    if (qty > quantity) {
      return false;
    }

    quantity -= quantity;
    return true;
  }
}

void main() {}
