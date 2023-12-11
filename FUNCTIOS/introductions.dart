// --- Use methods : example .contains
/* void main(List<String> args) {
  String name = 'Bastian';
  bool ctName = name.contains('a');

  if (ctName) {
    print("Bastian carries letter 'B'");
  } else {
    print("Sorry bastian don't carries letter 'B'");
  }
} */

/* void main(List<String> args) {
  String name = 'Bastian';
  bool containsB = name.contains('z');
  
  if (containsB) {
    print("Bastian contains the letter 'B'");
  } else {
    print("Bastian does not contain the letter 'B'");
  }
}
 */

/* import 'dart:io';

void main(List<String> args) {
  String name = 'Bastian';

  stdout.write("Enter a letter for verify: ");
  String letterToCheck = stdin.readLineSync()!.toLowerCase();

  bool containsLetter = name.toLowerCase().contains(letterToCheck);

  if (containsLetter) {
    print("Bastian carrie letter '$letterToCheck'");
  } else {
    print("Bastian does not carrier letter '$letterToCheck");
  }
}
 */