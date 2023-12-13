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

  Product(
      {required this.id,
      required this.name,
      required this.price,
      this.quantity = 0,
      required this.suppliers});

  Product.empty({
    this.id = '',
    this.name = '',
    this.price = 0,
    this.quantity = 0,
    this.suppliers = const [],
  });

  //--- --- -TODO: build factory - need return
  factory Product.fromMap(Map<String, dynamic> map) {
    try {
      return Product(
        id: map['id'],
        quantity: int.parse(map['quantity']),
        name: map['name'],
        price: map['price'] != null && map['price'] != ''
            ? num.parse(map['price'])
            : 0,
        suppliers: [],
      );
    } catch (e) {
      return Product(
        id: map['id'],
        quantity: int.parse(map['quantity']),
        name: map['name'],
        price: 0,
        suppliers: [],
      );
    }
  }

  @override
  String toString() {
    return 'Product(id: $id, name: $name, supplier: $suppliers,price: $price, quantity: $quantity)';
  }
}

void main() {
  final car = Product(name: 'BMW', price: 40000, suppliers: [], id: '1');
  print(car);

  final empty = Product.empty();
  print(empty);

  final map = {
    'id': '001',
    'name': 'ford',
    'price': '299.99',
    'quantity': '10',
  };

  final sale = Product.fromMap(map);
  print(sale);
}
