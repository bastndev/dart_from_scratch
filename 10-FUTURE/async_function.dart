class Product {
  String name;
  num product;

  Product(this.name, this.product);

  @override
  String toString() => 'Product(name: $name, Price: $product)';
}

void main() {
  print("1: Initializing the program...");

  getProduct().then(print);

  print("3: Finished the program");
}

Future<Product> getProduct() {
  return Future.delayed(const Duration(milliseconds: 1500), () {
    return Product("Cadillac", 1200);
  });
}
