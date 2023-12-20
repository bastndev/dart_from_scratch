import 'dart:async';

void main() {
  StreamSubscription<int> subscription;
  Stream<int> stream = Stream.value(2);

  subscription = stream.listen(print);

  subscription.pause();
  subscription.resume();
}
