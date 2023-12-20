// -- -- -FIXME: Stream con value is mono subscription recommend(1)
/* void main() {
  final stream = Stream<int>.value(5);

  stream.listen((event) {});
  stream.listen((event) {});
}
 */

// --- ---  Multi subscription
/* void main() {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5, 6]);
  stream.listen((event) {});
  stream.listen((event) {});
}
 */
// --- ---
/* void main() async {
  final stream = Stream<int>.value(5);

  bool containsTen = await stream.contains(10);
  print(containsTen);

  // stream.listen((event) {});
  // stream.listen((event) {});
}
 */