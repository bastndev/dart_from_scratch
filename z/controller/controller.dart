import '../models/products.dart';
import '../models/store.dart';

class Controller {
  final StoreHouse storeHouse;

  Controller(this.storeHouse);

  void getProducts() {
    final products = storeHouse.products;
    for (final product in products) {
      print(product);
    }
  }

  void addProduct(Products p) {
    storeHouse.products.add(p);
  }

  void deleteById(String id) {
    storeHouse.products.removeWhere((element) => element.id == id);
  }

  List<Products> searchName(String str) {
    return storeHouse.products
        .where(
            (element) => element.name.toLowerCase().contains(str.toLowerCase()))
        .toList();
  }

  void addQuantity(String id, int qty) {
    try {
      final products =
          storeHouse.products.firstWhere((element) => element.id == id);
      products.sum(qty);
    } catch (e) {
      print(e);
    }
  }

  bool subtractAmount(String id, int qty) {
    try {
      final products = storeHouse.products.firstWhere(
        (element) => element.id == id,
      );
      return products.subtract(qty);
    } catch (e) {
      return false;
    }
  }
}
