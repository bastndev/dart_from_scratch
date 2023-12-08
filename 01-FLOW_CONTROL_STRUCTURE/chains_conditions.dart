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
  int random = Random().nextInt(20) + 1;

  if (random < 10) {
    print("$random is less than 10");
  } else if (random >= 10 && random < 15) {
    print("$random is more than 10 but less than 15");
  } else if (random > 14 && random <= 19) {
    print("$random is more than 15 but less than 19");
  } else {
    print("$random is 20");
  }
}
