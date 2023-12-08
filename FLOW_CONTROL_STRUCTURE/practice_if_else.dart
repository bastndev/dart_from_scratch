import 'dart:io';

void main() {
  stdout.write('Introduce a number: ');
  final input = stdin.readLineSync() ?? '';
  final number = int.tryParse(input);

  if (number == null) {
    print("Please enter a number $input WTF");
  } else {
    print("You enter the number: $number");
  }
}
