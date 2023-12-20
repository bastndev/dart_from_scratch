/* void main() {
  final stream = Stream<int>.fromIterable([1, 2, 3, 3, 3, 4, 5, 6]);
  final filterStream = stream.where((event) => event > 3);
  filterStream.listen(print);
}
 */
void main() {
  final stream = Stream<int>.fromIterable([1, 2, 3, 3, 3, 4, 5, 6]);

  stream.distinct((a, b) => a == b).listen(print);
}
