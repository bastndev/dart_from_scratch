/* void main() {
  String data = 'e';

  if (data == 'a') {
    print("is Vocal");
  } else if (data == 'e') {
    print("is Vocal");
  } else if (data == 'i') {
    print("is Vocal");
  } else if (data == 'o') {
    print("is Vocal");
  } else if (data == 'u') {
    print("is Vocal");
  } else {
    print("Enter only 1 world. pls");
  }
}*/

/* void main() {
  String data = 'a';

  if (data == 'a' || data == 'e' || data == 'i' || data == 'o' || data == 'u') {
    print("is Vocal");
  } else if (data != 'a' ||
      data != 'e' ||
      data != 'i' ||
      data != 'o' ||
      data != 'u') {
    print("Is no vocal");
  } else {
    print("Enter only 1 world. pls");
  }
}
 */

/* void main() {
  String data = 'a';
  // double data1 = data.to;

  if (data == 'a' || data == 'e' || data == 'i' || data == 'o' || data == 'u') {
    print("is Vocal");
  } else if (data != 'a' ||
      data != 'e' ||
      data != 'i' ||
      data != 'o' ||
      data != 'u') {
    print("Is no vocal");
  } else {
    print("Enter only 1 world. pls");
  }
}
 */

//--- --- -TODO: Video
import 'dart:io';

/* void main() {
  stdout.write('Introduce a lyric: ');
  final input = (stdin.readLineSync() ?? '').toLowerCase();

  if (input.length > 1) {
    print("Error  change");
  } else if (input.length == 1 &&
      (input == 'a' ||
          input == 'e' ||
          input == 'i' ||
          input == 'o' ||
          input == 'u')) {
    print("IS a vocal");
  } else {
    print("Is no vocal");
  }
}
 */

void main() {
  stdout.write('Enter a number: ');
  final input = (stdin.readLineSync() ?? '\n');
  final number = int.tryParse(input);

  if (number != null && number >= 10 && number <= 20) {
    print("The number is between 10 and 20");
  } else {
    print("Enter a valid number between 10 and 20");
  }
}
