/* void main() {
  final numbers = [23, 2, 3, 4, 322, 5, 6];

  int index = numbers.indexOf(322);
  print(index);
} */

/* void main() {
  final numbers = [23, 2, 3, 4, 322, 5, 6];

  int index = numbers.indexOf(32);
  print(index);
}
 */

void main() {
  final numbers = [1, 2, 3, 4, 3, 5, 6, 7];
  // int index = numbers.indexOf(3);
  // print(index);
  // index = numbers.indexOf(100);
  // print(index);

  numbers.addAll([10, 20, 30]);

  int index = numbers.indexWhere((element) => element > 5);
  print(numbers);
  print('$index corresponds to de the numbers ${numbers[index]} ');
}
