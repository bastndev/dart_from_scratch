// --- --- -- --- Change of int to String.
/* void main() { 
  final intNumber = 10;
  final doubleNumber = 5.12;

  print(intNumber.toString());
  print(doubleNumber.toString());

} */
// --- --- --- -TODO: change of String to int
/* void main() {
  final intNumber = 10;
  final doubleNumber = 5.12;

  double change1 = intNumber.toDouble();
  int change2 = doubleNumber.toInt();

  print(change1);
  print(change2);
} */

// --- --- --- -TODO: print double
/* void main() {
  final doublePe = 25.1998;

  print(doublePe.toStringAsFixed(2));
  print(doublePe.toStringAsFixed(4));
} */

// --- --- --- -TODO: try - catch
/* void main() {
  String number = '10';

  print(number.toString());
  print(int.parse(number));
  print(double.parse(number));
  print(num.parse(number));
} */

/* void main() {
  String number = '10.5';

  try {
    print(int.parse(number));
    print(double.parse(number));
    print(num.parse(number));
  } catch (e) {
    print("Sorry Pls use int number Thanks | $e");
  }
}
 */

// --- --- --- -TODO: parsing
void main() {
  String stringNumber = '10.5';

  stringNumber = '10'; 

  final parsing = int.tryParse(stringNumber);
  print(parsing);
}
