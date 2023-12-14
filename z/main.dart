import 'dart:io';

import 'controller/controller.dart';
import 'models/products.dart';
import 'package:uuid/uuid.dart';

import 'models/store.dart';

// import '../05-POO/builder.dart';

void main() {
  final mouse = Products(
    id: const Uuid().v4(),
    name: 'Mouse Lenovo',
    price: 29.99,
    amount: 10,
  );
  final pc = Products(
    id: const Uuid().v4(),
    name: 'Pc Gamer',
    price: 1129.99,
  );

  final storeHouse = StoreHouse(
      id: const Uuid().v4(), name: 'Store House 1', products: [mouse, pc]);

  final controller = Controller(storeHouse);

  bool finishProgram = false;

  do {
    print('=========== StoreHouse Program ==============');
    print('\t1 Products List');
    print('\t2 Add Products');
    print('\t3 Delete Products');
    print('\t4 Search Products');
    print('\t5 Add quantity to Products');
    print('\t6 Subtract quantity to Products');
    print('\t7 End program');
    print('choose an option \r');

    String option = stdin.readLineSync() ?? '';
    switch (option) {
      case "1":
        break;
      case "2":
        break;
      case "3":
        break;
      case "4":
        break;
      case "5":
        break;
      case "6":
        break;
      case "7":
        finishProgram = true;
        break;
    }
  } while (!finishProgram);
}
