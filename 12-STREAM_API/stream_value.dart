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

/* void main() async {
  // final stream = Stream<int>.value(5);

  final stream = Stream.fromIterable([1, 2, 3, 4, 5, 6]);
  // bool containsTen = await stream.contains(10);
  // print(containsTen);
  stream.where((event) => event > 2).listen(print);
  stream.listen((event) {});

  // stream.listen((event) {});
} */

import 'dart:async';

void main() async {
  final stream = Stream<int>.value(5);

  // final stream = Stream.fromIterable([1, 2, 3, 4, 5, 6]);
  // bool containsTen = await stream.contains(10);
  // print(containsTen);
  // stream.where((event) => event > 2).listen(print);
  // stream.listen((event) {});

  // stream.listen((event) {});

  final newStream = stream.where((event) => event > 4);
  final controller = StreamController<int>();
  controller.addStream(newStream);
  controller.stream.listen(print);
}
