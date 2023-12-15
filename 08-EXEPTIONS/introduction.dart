/* void main() {
  try {
    final result = int.parse('Hello');
  } catch (e) {
    print(e);
  }
  print("Hello my baby!");
}
 */

void main() {
  try {
    final result = parse();
  } catch (e) {
    print(e);
  }
}

int parse(){
  return int.parse('Hello ');
}