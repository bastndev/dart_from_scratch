//--- --- TODO: fail

/* import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Enter a number: ');
  final input = stdin.readLineSync() ?? '';
  int random = Random().nextInt(20);

  do {
    if (random == input) {
      print("Your guessed number: ++$random");
    } else {
      continue;
    }
  } while (random == input);
}
 */

// -- -- AI
/* import 'dart:io';
import 'dart:math';

void main() {
  int random = Random().nextInt(20);
  int? guessedNumber;

  do {
    stdout.write('Enter a number: ');
    final input = stdin.readLineSync();
    guessedNumber = int.tryParse(input ?? '');

    if (guessedNumber == null) {
      print('Invalid input. Please enter a valid number.');
      continue;
    }

    if (guessedNumber % 2 == 0) {
      print('The guessed number is even. Exiting the program.');
      break;
    } else if (guessedNumber == random) {
      print('Congratulations! Your guessed number is correct: $guessedNumber');
      break;
    } else {
      print('Sorry, the guessed number is incorrect. Try again.');
    }

  } while (true);
} */

// -- - Teach

/* import 'dart:io';
import 'dart:math';

void main() {
  bool finish = false;
  int random = Random().nextInt(5);

  int maxTries = 5;
  int tries = 0;

  do {
    stdout.write('Enter a number between 0 to 9: ');
    final input = stdin.readLineSync() ?? '';
    final number = int.tryParse(input);

    if (number == null) {
      print("That's not a number :(");
    } else if (number == random) {
      print("Great! Congratulations!!! $random");
      finish = true;
      print(" and $tries (y) ");
    } else {
      print("keep trying $random");
      ++tries;
      if (tries == maxTries) {
        finish = true;
        print("You no longer have a balance");
      }
    }
  } while (!finish);
}
 */
/* 
import 'dart:io';
import 'dart:math';

void main() {
  bool finish = false;
  int random = Random().nextInt(10);

  int maxTries = 5;
  int tries = 0;

  do {
    stdout.write('Enter a number between 0 to 9: ');
    final input = stdin.readLineSync() ?? '';
    final number = int.tryParse(input);

    if (number == null) {
      print("That's not a number :(");
    } else if (number == random) {
      ++tries;
      print("Great! Congratulations!!! $random and $tries (y)");
      finish = true;
    } else {
      ++tries;
      print("Keep trying");
      if (tries == maxTries) {
        finish = true;
        print("You no longer have attempts");
      }
    }
  } while (!finish);
} */

/* import 'dart:io';
import 'dart:math';

void main() {
  final random = Random().nextInt(10);
  final maxTries = 5;
  int tries = 0;

  while (tries < maxTries) {
    stdout.write('Enter a number between 0 to 9: ');
    final input = stdin.readLineSync() ?? '';
    final number = int.tryParse(input);

    if (number == null) {
      print("That's not a number :(");
    } else if (number == random) {
      print("Great! Congratulations!!! $random = $input");
      break;
    } else {
      ++tries;
      print("Keep trying. Tries left: ${maxTries - tries}");
    }
  }

  if (tries == maxTries) {
    print("You've run out of attempts. The correct number was $random");
  }
} */

import 'dart:io';

void main() {
  stdout.write('What year were you born: ');
  final input = stdin.readLineSync() ?? '';
  final year = int.tryParse(input);

  if (year == null) {
    print("That's not a  year");
  } else {
    final result = 2023 - year;

    if (result > 18) {
      print("With $result you're of age Mr.");
    } else {
      print("With $result you'rent of age 'Chibolo'");
    }
  }
}
