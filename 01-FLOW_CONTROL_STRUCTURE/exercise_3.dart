/* import 'dart:io';

void main() {
  stdout.write('Enter fist number: ');
  stdout.write('Enter second number: ');

  final input = stdin.readLineSync() ?? '\n';
  final input2 = stdin.readLineSync() ?? '';
  final number = int.tryParse(input);
  final number2 = int.tryParse(input2);

  if (number == null && number2 == null) {
    print("equal numbers");
  } else if (number != null && number2 != null && number < number2) {
    print("First number is more");
  } else if (number != null && number2 != null && number > number2) {
    print("First number is more");
  } else {
    print("That is not a number");
  }
} */

import 'dart:io';

/* void main() {
  stdout.write('Enter first number: ');
  final input = stdin.readLineSync() ?? '';
  final number = int.tryParse(input);

  stdout.write('Enter second number: ');
  final input2 = stdin.readLineSync() ?? '';
  final number2 = int.tryParse(input2);

  if (number == null && number2 == null) {
    print("Equal numbers");
  } else if (number != null && number2 != null) {
    if (number > number2) {
      print("First number is more");
    } else if (number < number2) {
      print("Second number is more");
    } else {
      print("Numbers are equal");
    }
  } else {
    print("That is not a number");
  }
} */

/* void main() {
  stdout.write('Enter fist number: ');
  final numAinput = stdin.readLineSync() ?? '';
  final numA = int.tryParse(numAinput);
  if (numA != null) {
    stdout.write('Enter second number: ');
    final numBinput = stdin.readLineSync() ?? '';
    final numB = int.tryParse(numBinput);
    if (numB != null) {
      if (numA == numB) {
        print("Numbers are equals");
      } else {
        final stt = numA > numB
            ? 'The number A ($numA) is most that number B ($numB)'
            : 'The number B ($numB) is most that number A ($numA)';
        print(stt);
      }
    } else {
      print("Enter god the second number: ");
    }
  } else {
    print("Enter god the first number: ");
  }
} */

// --- --- -FIXME: Factorization
void main() {
  stdout.write('Enter fist number: ');
  final numAinput = stdin.readLineSync() ?? '';
  final numA = int.tryParse(numAinput);
  if (numA == null) {
    print("Enter one number pls: ");
    return;
  }
  stdout.write('Enter second number: ');
  final numBinput = stdin.readLineSync() ?? '';
  final numB = int.tryParse(numBinput);
  if (numB == null) {
    print("Enter second number pls: ");
    return;
  }
  if (numA == numB) {
    print("Numbers are equals");
    return;
  }
  final stt = numA > numB
      ? 'The number A ($numA) is most that number B ($numB)'
      : 'The number B ($numB) is most that number A ($numA)';
  print(stt);
}
