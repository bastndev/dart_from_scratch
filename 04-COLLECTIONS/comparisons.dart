//--- --- true
/* void main() {
  int a = 1;
  int b = 1;

  print(a == b);
} */

// --- --- false
/* void main() {
  List<int> listA = [1, 2, 3, 4];
  List<int> listB = [1, 2, 3, 4];

  print(listA == listB);
}
 */

/* void main() {
  List<int> listA = [1, 2, 3, 4];
  List<int> listB = [1, 2, 3, 4];

  List<int> listC = listA;
  // List<int> listD = listB;
  print(listC == listA);
}
 */

void main() {
  List<int> listA = [1, 2, 3, 4];
  List<int> listB = [1, 2, 3, 4];

  // List<int> listC = listA;
  // List<int> listD = listB;
  print(listA == listA);
  print(listB == listB);
}
