class Products {
  final String id;
  final String name;
  int amount;
  num price;

  Products({
    required this.id,
    required this.name,
    this.amount = 0,
    required this.price,
  });

  void sum(int qty) {
    amount += qty;
  }

  bool subtract(int qty) {
    if (amount < qty) {
      return false;
    }
    amount -= qty;
    return true;
  }

  @override
  String toString() {
    return 'id: $id, name: $name, amount: $amount, price: $price';
  }
}
