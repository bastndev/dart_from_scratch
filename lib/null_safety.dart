void main() {
  String stringNumber = '10.20';

  stringNumber = '10';

  int? parsed = int.tryParse(stringNumber);
  print(parsed);
}
