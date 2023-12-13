//--- --- -TODO: class "object creation templates"
/* class Product {
  String name = '';
  num price = 0;
} */

// null labels
/* class Product {
  String? name;
  num? price;
} */

//late
/* class Product {
  late String name;
  late num price;
} */

// builder - constructor
/* class Product {
  String name;
  num price;

  Product(this.name, this.price);
}

void main() {
  final pc = Product('MackBook', 1700);
  final car = Product('BMW', 40000);
  print('Name: ${car.name} Price: ${car.price}');
  car.name = 'Toyota';
  car.price = 200000;
  print('Name: ${car.name} Price: ${car.price}');
  print('Name: ${pc.name} Price: ${pc.price}');

}
 */

class Product {
  String name;
  num price;

  Product(this.name, this.price);
}

void main() {
  final pc = Product('MackBook', 1700);
  final car = Product('BMW', 40000);

  print('\u001b[34mName: \u001b[0m\u001b[32m${car.name}\u001b[0m \u001b[34mPrice: \u001b[0m\u001b[32m${car.price}\u001b[0m');
  
  car.name = 'Toyota';
  car.price = 200000;
  
  print('\u001b[34mName: \u001b[0m\u001b[32m${car.name}\u001b[0m \u001b[34mPrice: \u001b[0m\u001b[32m${car.price}\u001b[0m');
  
  print('\u001b[34mName: \u001b[0m\u001b[32m${pc.name}\u001b[0m \u001b[34mPrice: \u001b[0m\u001b[32m${pc.price}\u001b[0m');
}
