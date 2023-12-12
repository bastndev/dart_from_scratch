/* void main() {
  final numbers = [1, 2, 3, 4, 5, 6];

  numbers.shuffle();
  print(numbers);
} */
/* void main() {
  final numbers = [1, 6, 4, 3, 5, 2];

  numbers.sort((a, b) => a.compareTo(b),);
  print(numbers);
} */

/* void main() {
  final numbers = [1, 6, 4, 3, 5, 2];

  numbers.sort((a, b) => b.compareTo(a),);
  print(numbers);
} */

/* void main() {
  final numbers = [1, 6, 4, 3, 5, 2];

  numbers.sort((a, b) => a > b ? 1 : -1);
  print(numbers);
} */  
void main() {
  final numbers = [1, 6, 4, 3, 5, 2];

  numbers.sort((a, b) => a < b ? 1 : -1);
  print(numbers);
}