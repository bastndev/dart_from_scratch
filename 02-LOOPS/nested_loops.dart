/* void main() {
  int iterations = 0;

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      iterations++;
    }
  }
  print(iterations);
}
 */

void main() {
  for (int i = 1; i < 10; i++) {
    print("==== Table of $i ====");
    for (int j = 1; j < 10; j++) {
      print("$i x $j = ${i * j}");
    }
  }
}
