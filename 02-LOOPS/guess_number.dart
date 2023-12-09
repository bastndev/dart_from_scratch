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
import 'dart:io';
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
}
