// --- --- -FIXME: Before
/* void main() {
  int number = 5;

  if (number % 2 == 0) {
    print("The $number is even ");
  } else {
    print("The $number is odd ");
  }
} */

// --- --- -FIXME: Before
/* void main() {
  int number = 10;

  bool isPar = number % 2 == 0;
  print("$number ${isPar ? 'is even' : 'its not even'} ");
} */

void main() {
  int number = 11;

  String isPar = number % 2 == 0 ? 'is even' : "it's not even";
  print(isPar);
}
