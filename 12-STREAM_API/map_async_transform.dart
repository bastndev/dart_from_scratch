//Transform the int to string
import 'dart:async';

void main() {
  final stream = Stream.fromIterable([10, 11, 12, 3, 4, 5, 6, 10]);
  Stream<String> transformStream =
      stream.transform(StreamTransformer.fromHandlers(
    handleData: (data, sink) {
      sink.add('transforming: $data');
    },
  ));
  transformStream.listen(print);
}
