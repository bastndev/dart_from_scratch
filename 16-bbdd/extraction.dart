import 'dart:convert';
import 'dart:io';

// import 'package:flutter/widgets.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

void main() async {
  final urls =
      File('15.1-WEB_SCARPING/products2').readAsLinesSync().sublist(0, 10);
  final products = <NutritionalInfoProduct>[];
  for (final url in urls) {
    final response = await http.get(Uri.parse(url));

    final doc = parse(response.body);
    final h2s = doc.getElementsByTagName('h2');
    String productName = '';

    final product = NutritionalInfoProduct();

    for (final h2 in h2s) {
      if (h2.attributes.containsValue('food:name')) {
        productName = h2.text;
        break;
      }
    }
    print("Product: $productName");

    //Id: code
    final barCodeElement = doc.getElementById('barcode');
    String barcode = barCodeElement?.text ?? '';
    print("Barcode: $barcode");

    //..Css operator, | cascade operator
    product
      ..name = productName
      ..barcode = barcode;

    print('');

    //barcode Nutrition
    final tbody = doc.getElementsByTagName('tbody').first;
    final str = tbody.children;

    for (final tr in str) {
      final tds = tr.children;
      final title = tds.first.text.trim();
      final value = tds[1].text.trim();
      // print('$title: $value');

      if (title == NutritionalInfoType.energy.name) {
        product.energy = value;
      } else if (title == NutritionalInfoType.fast.name) {
        product.fast = value;
      } else if (title == NutritionalInfoType.saturateFast.name) {
        product.saturateFast = value;
      } else if (title == NutritionalInfoType.carbohydrates.name) {
        product.carbohydrates = value;
      } else if (title == NutritionalInfoType.sugars.name) {
        product.sugars = value;
      } else if (title == NutritionalInfoType.fiber.name) {
        product.fiber = value;
      } else if (title == NutritionalInfoType.proteins.name) {
        product.proteins = value;
      } else if (title == NutritionalInfoType.salt.name) {
        product.salt = value;
      }
    }
    products.add(product);
  }
  print(products);
  File('15.1-WEB_SCARPING/results').writeAsStringSync(jsonEncode(products));
}

enum NutritionalInfoType {
  energy('Energía'),
  fast('Grasas'),
  saturateFast('Grasas saturadas'),
  carbohydrates('Hidratos de carbono'),
  sugars('Azúcares'),
  fiber('Fibra alimentaria'),
  proteins('Proteínas'),
  salt('Sal');

  final String name;
  const NutritionalInfoType(this.name);
}

class NutritionalInfoProduct {
  String? name;
  String? barcode;
  String? energy;
  String? fast;
  String? saturateFast;
  String? carbohydrates;
  String? sugars;
  String? fiber;
  String? proteins;
  String? salt;
  NutritionalInfoProduct({
    this.name,
    this.barcode,
    this.energy,
    this.fast,
    this.saturateFast,
    this.carbohydrates,
    this.sugars,
    this.fiber,
    this.proteins,
    this.salt,
  });

  @override
  String toString() {
    return 'NutritionalInfoProduct(name: $name, barcode: $barcode, energy: $energy, fast: $fast, saturateFast: $saturateFast, carbohydrates: $carbohydrates, sugars: $sugars, fiber: $fiber, proteins: $proteins, salt: $salt)';
  }

  NutritionalInfoProduct copyWith({
    String? name,
    String? barcode,
    String? energy,
    String? fast,
    String? saturateFast,
    String? carbohydrates,
    String? sugars,
    String? fiber,
    String? proteins,
    String? salt,
  }) {
    return NutritionalInfoProduct(
      name: name ?? this.name,
      barcode: barcode ?? this.barcode,
      energy: energy ?? this.energy,
      fast: fast ?? this.fast,
      saturateFast: saturateFast ?? this.saturateFast,
      carbohydrates: carbohydrates ?? this.carbohydrates,
      sugars: sugars ?? this.sugars,
      fiber: fiber ?? this.fiber,
      proteins: proteins ?? this.proteins,
      salt: salt ?? this.salt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'barcode': barcode,
      'energy': energy,
      'fast': fast,
      'saturateFast': saturateFast,
      'carbohydrates': carbohydrates,
      'sugars': sugars,
      'fiber': fiber,
      'proteins': proteins,
      'salt': salt,
    };
  }

  factory NutritionalInfoProduct.fromMap(Map<String, dynamic> map) {
    return NutritionalInfoProduct(
      name: map['name'],
      barcode: map['barcode'],
      energy: map['energy'],
      fast: map['fast'],
      saturateFast: map['saturateFast'],
      carbohydrates: map['carbohydrates'],
      sugars: map['sugars'],
      fiber: map['fiber'],
      proteins: map['proteins'],
      salt: map['salt'],
    );
  }

  String toJson() => json.encode(toMap());

  factory NutritionalInfoProduct.fromJson(String source) =>
      NutritionalInfoProduct.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NutritionalInfoProduct &&
        other.name == name &&
        other.barcode == barcode &&
        other.energy == energy &&
        other.fast == fast &&
        other.saturateFast == saturateFast &&
        other.carbohydrates == carbohydrates &&
        other.sugars == sugars &&
        other.fiber == fiber &&
        other.proteins == proteins &&
        other.salt == salt;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        barcode.hashCode ^
        energy.hashCode ^
        fast.hashCode ^
        saturateFast.hashCode ^
        carbohydrates.hashCode ^
        sugars.hashCode ^
        fiber.hashCode ^
        proteins.hashCode ^
        salt.hashCode;
  }
}
