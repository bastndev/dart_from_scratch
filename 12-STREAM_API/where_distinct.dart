/* void main() {
  final stream = Stream<int>.fromIterable([1, 2, 3, 3, 3, 4, 5, 6]);
  final filterStream = stream.where((event) => event > 3);
  filterStream.listen(print);
}
 */
/* void main() {
  final stream = Stream<int>.fromIterable([1, 2, 3, 3, 3, 4, 5, 6]);

  stream.distinct((a, b) => a == b).listen(print);
} */

import 'dart:async';

void main() {
  final stream = Stream<int>.fromIterable([1, 2, 3, 3, 3, 4, 5, 6]);

  final connected = 'CONNECTED :)';
  // stream.distinct((a, b) => a == b).listen(print);
  final controller = StreamController<String>();
  controller.stream.distinct((a, b) {
    return a == b;
  }).listen((event) {
    print("Status connection: $event");
    if (event == connected) {
      print('Connected');
    }
  });

  for (int i = 0; i < 100; i++) {
    if (i == 0) {
      controller.add('PREPARING...');
    } else if (i < 99) {
      controller.add('WAITING...');
    } else {
      controller.add(connected);
    }
  }
}
