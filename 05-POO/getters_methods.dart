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

void main() {
  Product myProduct = Product(
    id: "001",
    name: "Laptop",
    suppliers: ["Supplier1", "Supplier2"],
    price: 999.99,
    quantity: 10,
  );

  // Imprimir detalles del producto
  print("Product ID: ${myProduct.id}");
  print("Product Name: ${myProduct.name}");
  print("Suppliers: ${myProduct.suppliers}");
  print("Price: \$${myProduct.price}");
  print("Initial Quantity: ${myProduct.quantity}");

  // Verificar si hay existencias
  print("Exists in inventory: ${myProduct.existsProduct()}");

  // Agregar y restar cantidades
  myProduct.add(5);
  print("Quantity after adding 5: ${myProduct.quantity}");

  bool subtractResult = myProduct.subtract(3);
  print("Quantity after subtracting 3: ${myProduct.quantity}");
  print("Subtract operation successful: $subtractResult");

  // Intentar restar más de lo que hay disponible
  bool subtractResult2 = myProduct.subtract(10);
  print(
      "Subtract operation (attempting to subtract 10) successful: $subtractResult2");
}
 */

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

    quantity -= qty;
    return true;
  }
}

void main() {
  final myProduct = Product(
    id: "001",
    name: "Laptop",
    suppliers: ["Supplier1", "Supplier2"],
    price: 999.99,
    quantity: 10,
  );

  print("Product ID: ${myProduct.id}");
  print("Product Name: ${myProduct.name}");
  print("Suppliers: ${myProduct.suppliers}");
  print("Price: \$${myProduct.price}");
  print("Initial Quantity: ${myProduct.quantity}");

  print("Exists in inventory: ${myProduct.existsProduct()}");

  myProduct.add(5);
  print("Quantity after adding 5: ${myProduct.quantity}");

  bool subtractResult = myProduct.subtract(3);
  print("Quantity after subtracting 3: ${myProduct.quantity}");
  print("Subtract operation successful: $subtractResult");

  bool subtractResult2 = myProduct.subtract(10);
  print(
      "Subtract operation (attempting to subtract 10) successful: $subtractResult2");
}
