//-FIXME: encryption

import 'dart:convert';
import 'dart:io';

import 'package:encrypt/encrypt.dart';

void main() async {
  final file = File('zz/encryption.txt');
  print(await loadCountries(file));
}

class CustomEncrypt {
  final key = Key.fromUtf8('01234567890123456789012345678900');
  final iv = IV.fromLength(16);

  String encrypt(String str) {
    final encrypter = Encrypter(AES(key));

    final encrypted = encrypter.encrypt(str, iv: iv);
    return encrypted.base64;
  }

  String decrypt(String str) {
    final encrypter = Encrypter(AES(key));
    final decrypted = encrypter.decrypt64(str, iv: iv);
    return decrypted;
  }
}

Future<void> saveCountries(File file) async {
  final countries = [
    Country(nameEN: 'Perú', nameES: 'Peru', iso: 'PE'),
    Country(nameEN: 'Andorra', nameES: 'Andorra', iso: 'AD')
  ];

  final json = jsonEncode(countries);
  final jsonEncrypted = CustomEncrypt().encrypt(json);
  file.writeAsString(jsonEncrypted);
}

Future<List<Country>> loadCountries(File file) async {
  final json = await file.readAsString();
  final decryptedJson = CustomEncrypt().decrypt(json);
  final list = jsonDecode(decryptedJson) as List<dynamic>;

  final countries = list.map((e) => Country.fromJson(e)).toList();
  return countries;
}

//--- -- Class Country -- ---
class Country {
  final String nameEN;
  final String nameES;
  final String iso;

  const Country(
      {required this.nameEN, required this.nameES, required this.iso});

  factory Country.fromList(List<String> list) {
    return Country(nameEN: list.first, nameES: list[1], iso: list.last);
  }

  Map<String, dynamic> toMap() =>
      {'nameEN': nameEN, 'nameES': nameES, 'iso': iso};

  String toJson() => jsonEncode(toMap());

  factory Country.fromMap(Map<String, dynamic> map) {
    return Country(
        nameEN: map['nameEN'], nameES: map['nameES'], iso: map['iso']);
  }

  factory Country.fromJson(String str) {
    return Country.fromMap(jsonDecode(str));
  }

  @override
  String toString() {
    return 'nameEn: $nameEN, nameES: $nameES, iso: $iso\n';
  }
}
//-TODO: skirt improve decryption