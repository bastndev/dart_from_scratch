//-FIXME: encryption

import 'dart:convert';
import 'dart:io';

void main() async {
  final file = File('zz/encryption.txt');
  // print(await loadCountries(file));
  await saveCountries(file);
}

Future<void> saveCountries(File file) async {
  final countries = [
    Country(nameEN: 'Perú', nameES: 'Peru', iso: 'PE'),
    Country(nameEN: 'Andorra', nameES: 'Andorra', iso: 'AD')
  ];

  final json = jsonEncode(countries);
  file.writeAsString(json);
}

Future<List<Country>> loadCountries(File file) async {
  final json = await file.readAsString();
  final list = jsonDecode(json) as List<dynamic>;

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
