// --- --- -TODO: Strings length and contains
/* void main() {
  String name = "Bastian";

  int you = name.length;

  print("Your name have $you characters");
}
 */

void main() {
  String name = "Bastian";

  bool me = name.contains("Ba");
  bool me2 = name.contains("ba");

  print("You name contains Ba?: $me");
  print("You name contains Ba?: $me2");
}
