/* void main() {
  final stream = Stream.periodic(const Duration(seconds: 1), (event) {
    return event;
  });
  stream.listen(print);
}
 */

import 'dart:async';

/* void main() {
  StreamSubscription<int>? subs;
  final stream = Stream.periodic(const Duration(seconds: 1), (event) {
    if (event == 5) {
      subs?.cancel();
    }
    return event;
  });
  subs = stream.listen((event) {
    print(event);
  });
}
 */