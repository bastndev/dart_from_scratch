// --- -TODO: interpolation 1
/* void main() {
  int a = 5;
  int b = 10;

  String operationSum =
      a.toString() + ' + ' + b.toString() + ' = ' + (a + b).toString();
  print(operationSum);
} */

// --- -TODO: interpolation 2
/* void main() {
  int a = 5;
  int b = 10;

  String operationSum = '$a + $b = ${a + b}';
  print(operationSum);
} */

// --- -TODO: interpolation 3
/* void main() {
  int a = 5;
  int b = 10;

  String operationSum = '${a + b}';
  print("a + b = $operationSum");
} */

// --- -TODO: interpolation 4
void main() {
  int a = 5;
  int b = 10;

  print("$a + $b = ${a + b}");
}