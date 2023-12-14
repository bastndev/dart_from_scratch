import '../models/store.dart';

class Controller {
  final StoreHouse storeHouse;

  Controller(this.storeHouse);

  void getProducts() {
    final products = storeHouse.products;
    for(final product in products){
      print(product);
    }
  }
}
