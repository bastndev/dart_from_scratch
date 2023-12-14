import 'products.dart';

class StoreHouse {
  final String id;
  final String name;
  final List<Products> products;

  const StoreHouse(
      {required this.id, required this.name, required this.products});

  @override
  String toString() {
    return 'id: $id, name: $name, products: $products';
  }
}
