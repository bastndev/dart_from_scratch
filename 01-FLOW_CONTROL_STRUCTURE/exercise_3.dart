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

void main() {
  stdout.write('Enter first number: ');
  final input = stdin.readLineSync() ?? '\n';
  final number = int.tryParse(input);

  stdout.write('Enter second number: ');
  final input2 = stdin.readLineSync() ?? '';
  final number2 = int.tryParse(input2);

  if (number == null && number2 == null) {
    print("Equal numbers");
  } else if (number != null && number2 != null) {
    if (number < number2) {
      print("Second number is more");
    } else if (number > number2) {
      print("First number is more");
    } else {
      print("Numbers are equal");
    }
  } else {
    print("That is not a number");
  }
}
