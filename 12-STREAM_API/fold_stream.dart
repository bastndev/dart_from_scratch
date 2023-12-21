/* void main() async {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5, 6]);

  final sum = await stream.fold(0, (previous, element) => previous + element);
  print("The sum of elements is: $sum");
} */

/* void main() async {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5, 6]);

  final length = await stream.length;
  final average = await stream.fold(
      0.0, (previous, element) => previous + (element / length));
  print("The division between all numbers is: $average");
} */

// --- -More easy
void main() async {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5, 6]);

  final sum = await stream.fold(0, (previous, element) => previous + element);
  final length = await stream.length;
  
  print("The division between all numbers is: ${sum / length}");
}
