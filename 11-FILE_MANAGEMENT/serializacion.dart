// import 'dart:io';
//-FIXME: Save to Json format

import 'dart:convert';

void main() async {}

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
        nameEN: map['nameEn'], nameES: map['nameES'], iso: map['iso']);
  }

  factory Country.fromJson(String str) {
    return Country.fromMap(jsonDecode(str));
  }

  @override
  String toString() {
    return 'nameEn: $nameEN, nameES: $nameES, iso: $iso\n';
  }
}
