/* void main() {
  final list = [1, 2, 3, 4, 5];

  list.add(6);
  print("The 6 add to list: $list");
} */

/* void main() {
  final list = [1, 2, 3, 4, 5];

  list.insert(5, 5);
  print("The 5 add to list: $list");
} */

/* void main() {
  final list = [1, 2, 3, 4, 5];

  list.addAll([6, 7, 8, 9, 10]);
  print("The all add to list: $list");
} */

// --- --- -TODO: Delete numbers

/* void main() {
  final numbers = [1, 2, 3, 4, 5, 23];

  bool remove = numbers.remove(23);
  print("The 1 to remove: $remove of $numbers");
} */

/* void main() {
  final numbers = [23, 2, 3, 4, 5];

  int number = numbers.removeAt(0);
  print("$number to remove of list: $numbers");
}
 */

/* void main() {
  final numbers = [23, 2, 3, 4, 5, 6];

  numbers.removeWhere((element) {
    if (element > 4) {
      return true;
    }
    return false;
  });
  print(numbers);
}
 */

/* void main() {
  final numbers = [23, 2, 3, 4, 5, 6];

  numbers.removeWhere((element) {
    return element > 4;
  });
  print(numbers);
}
 */