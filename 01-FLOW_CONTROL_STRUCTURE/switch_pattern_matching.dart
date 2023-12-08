import 'dart:math';

void main() {
  int number = Random().nextInt(20);

  switch (number) {
    case >= 0 && < 6:
      print("First case: ");
      print("0 <= $number < 6");
      break;
    case > 5 && <= 17:
      print("Second case: ");
      print("6 <= $number <= 17");
      break;
    default:
      print("$number <= 19 ");
  }
}
