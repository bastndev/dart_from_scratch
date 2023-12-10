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

void main(List<String> args) {
  String name = 'Bastian';
  bool containsB = name.contains('z');
  
  if (containsB) {
    print("Bastian contains the letter 'B'");
  } else {
    print("Bastian does not contain the letter 'B'");
  }
}
