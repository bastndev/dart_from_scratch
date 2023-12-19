void main() async {}

class Country {
  final String nameEN;
  final String nameES;
  final String iso;

  const Country(
      {required this.nameEN, required this.nameES, required this.iso});

  @override
  String toString() {
    return 'nameEn: $nameEN, nameES: $nameES, iso: $iso';
  }
}
