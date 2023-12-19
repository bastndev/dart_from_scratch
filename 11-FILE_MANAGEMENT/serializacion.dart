import 'dart:io';

void main() async {

}

class Country {
  final String nameEN;
  final String nameES;
  final String iso;

  const Country(
      {required this.nameEN, required this.nameES, required this.iso});

  factory Country.fromList(List<String> list) {
    return Country(nameEN: list.first, nameES: list[1], iso: list.last);
  }

  @override
  String toString() {
    return 'nameEn: $nameEN, nameES: $nameES, iso: $iso\n';
  }
}
