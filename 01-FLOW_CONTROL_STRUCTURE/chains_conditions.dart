/* void main() {
  int number = 11;

  if (number >= 5 && number <= 10) {
    print("oh Yeah");
  } else {
    print("Nooooo");
  }
} */

import 'dart:math';

void main() {
  int random = Random().nextInt(20);

  if (random < 10) {
    print("$random is less than 10");
  }
}
