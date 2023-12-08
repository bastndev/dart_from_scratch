/* void main() {
  String stringNumber = '10.20';

  stringNumber = '10';

  int? parsed = int.tryParse(stringNumber);
  print(parsed);
} */

/* void main() {
  String stringNumber = '10';

  int? parsed = int.tryParse(stringNumber);
  print(parsed! + 5);
} */

// --- --- -TODO: null safety parsed
/* void main() {
  String stringNumber = '10.5';

  int? parsed = int.tryParse(stringNumber)?? 0;
  print("Hello null safety \n${parsed + 5}");
} */

/* void main() {
  String stringNumber = '50';

  int? parsed = int.tryParse(stringNumber) ?? 0;
  print("Hello null safety \n${parsed + 5}");
} */

void main() {
  String stringNumber = '12';
  int? parsed = int.tryParse(stringNumber);
  print(parsed);

  stringNumber = '10.20';
  parsed = int.tryParse(stringNumber);
  print("Number before to parsed: $parsed");

  int number = parsed ??= 10;
  print("Number after to parsed: $number");
}