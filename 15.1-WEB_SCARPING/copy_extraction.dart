import 'dart:convert';
import 'dart:io';

void main() async {
  final data = File('15.1-WEB_SCARPING/results').readAsStringSync();
  final products = (jsonDecode(data) as List<dynamic>)
      .map((e) => NutritionalInfoProduct.fromJson(e))
      .toList();
  print(products);
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
