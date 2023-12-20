import 'dart:async';

/* void main() {
  StreamSubscription<int> subscription;
  Stream<int> stream = Stream.value(2);

  subscription = stream.listen(print);

  subscription.pause();
  subscription.resume();
  subscription.cancel();
}
 */

void main() {
  StreamSubscription<int> subscription;
  Stream<int> stream = Stream.value(2);

  subscription = stream.listen(print);

  subscription.pause(Future.delayed(const Duration(milliseconds: 1000)));
  // subscription.cancel();
}
