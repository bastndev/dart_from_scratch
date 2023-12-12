void main() {
  final numbers = [5, 1, 2, 3, 4, 5, 10, 9, 20, 13, 14, 30, 12, 11];

  final filter =
      numbers.where((element) => element > 8 && element < 13).toList();
  print(filter);
}
