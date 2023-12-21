import 'dart:async';

/* void main() async {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5, 6]);
  final controller = StreamController<int>();

  stream.pipe(controller);
  controller.stream.listen(print);
} */


/* void main() async {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5, 6]);
  final controller = StreamController<int>();

  await stream.pipe(controller);
  controller.stream.listen(print);
} */

void main() async {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5, 6]);
  final controller = StreamController<int>();

  controller.stream.listen(print);
  await stream.pipe(controller);
}