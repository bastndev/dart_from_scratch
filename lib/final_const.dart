// both prevent a variable from being reassigned or rewritten
// -TODO: final - const . cannot be reassigned
/* void main() { 
  final number = 10;

  number = 14;

  const numbers = 11;
  numbers = 12;
} */

// -TODO: final - const . in list
/* void main() {
  final number = [1, 2, 3, 4, 5];
  number.add(6);

  print(number);
}
 */
/* void main() {
  const number = [1, 2, 3, 4, 5];
  number.add(6);

  print(number);
}
 */

//--- --- --- -FIXME: Exception
void main() {
  try {
    const number = [1, 2, 3, 4, 5];
    number.add(6);

    print(number);
  } catch (ex) {
    print(ex);
  }
}
