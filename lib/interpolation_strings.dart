// --- -TODO: interpolation 1
/* void main() {
  int a = 5;
  int b = 10;

  String operationSum =
      a.toString() + ' + ' + b.toString() + ' = ' + (a + b).toString();
  print(operationSum);
} */

// --- -TODO: interpolation 2
void main() {
  int a = 5;
  int b = 10;

  String operationSum = '$a + $b = ${a + b}';
  print(operationSum);
}
