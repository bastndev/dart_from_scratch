import 'dart:io';

void main() async {
  final csv = File('zz/countries.csv');
  final filterFile = File('zz/filter_file.txt');

  if (!await filterFile.exists()) {
    await filterFile.create();
  }

  final lines = await csv.readAsLines();
  lines.removeAt(0);

  final countries = lines.map((e) => Country.fromList(e.split(','))).toList();
  final char = 'pe';

  final filterCountries =
      countries.where((element) => element.nameES.contains(char)).toList();

  final header = '======== SEARCH BY $char ========\n';
  await filterFile.writeAsString(header, mode: FileMode.append);
  for (final country in filterCountries) {
    await filterFile.writeAsString(country.toString(), mode: FileMode.append);
  }
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
