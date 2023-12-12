/* void main() {
  final numbers = [1, 2, 1, 3, 4, 2, 1];

  final number = numbers.firstWhere((element) => element == 4);
  print(number);
} */

/* void main() {
  final numbers = [1, 2, 1, 3, 4, 2, 1];

  final number = numbers.firstWhere((element) => element == 4);
  print(number);

  final noNumber = numbers.firstWhere(
    (element) => element == 100,
    orElse: () => -1,
  );
  print(noNumber);
}
 */

void main() {
  final numbers = [1, 2, 1, 3, 4, 2, 1];

  final lastNumber = numbers.lastWhere(
    (element) => element == 100,
    orElse: () => -1,
  );
  print(lastNumber);
}
