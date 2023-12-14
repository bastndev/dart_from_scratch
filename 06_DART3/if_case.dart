//--- --- --- -TODO: Validate to Json
void main() {
  // final list = [1, 2];
  final list = [1, 2, 3];
  // final list = ['1', 2,3];

  if (list case [int x, int y]) {
    print("The list contains 2 elements: $x, $y");
    // print("The sun fo the list is: ${x + y}");
  } else if (list case [int x, int y, int z]) {
    print("The list contains 3 elements($x, $y, and $z)");
  }
}
