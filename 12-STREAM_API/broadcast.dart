// --- --- -FIXME: Multi Subscription
import 'dart:async';

/* void main() {
  final controller = StreamController<int>.broadcast();
  Stream<int> broadcastStream = Stream.value(5).asBroadcastStream();

  final sub1 = broadcastStream.listen((event) {
    print("Sub1: $event");
  });
  final sub2 = broadcastStream.listen((event) {
    print("Sub2: $event");
  });
}
 */



/* void main() {
  final controller = StreamController<int>.broadcast(sync: true);
  Stream<int> broadcastStream = controller.stream;

  final sub1 = broadcastStream.listen((event) {
    print("Sub1: $event");
  });
  final sub2 = broadcastStream.listen((event) {
    print("Sub2: $event");
  });

  controller.add(5);
  sub1.pause();
} */
