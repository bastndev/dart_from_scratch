/* abstract class Product {
  void method() {
    print("I'am a method");
  }
}

// NO instance - but - can be inherited or can be implemented
void main() {}
 */

// --- --- -TODO: overwrite
abstract class Product {
  void method() {
    print("I'am a method");
  }
}

class Car extends Product {
  @override
  void method() {
    print("I'am a Car!");
  }
}

class Dog extends Product {
  // @override
  // void method() {
  //   print("I'am a dog!");
  // }
}

// NO instance - but - can be inherited or can be implemented
void main() {
  final car = Car();
  final dog = Dog();

  List<Product> products = [car, dog];
  for (final product in products) {
    product.method();
  }
}
