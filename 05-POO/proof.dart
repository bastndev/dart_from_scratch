import 'privacy.dart';

void main() {
  final proof = Product(id: 'id', name: 'name', price: 300, suppliers: []);
  print(proof.quantity);
  proof.quantity = 100;
  print(proof.quantity);
}
