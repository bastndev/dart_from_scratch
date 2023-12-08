// --- Shadow
/* void main() {
  int number = 0;

  if(true) {
    int number = 50;
    print("Shadow number: $number");
    ++number;
  }

  print("Main number $number");
}
 */

void main() {
  String name = 'Bastian';

  {
    String name = 'Gohit';
    print("My first name is: $name");
  }
  print("And my second name is: $name");
}
