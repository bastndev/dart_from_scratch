//Transform the int to string
import 'dart:async';

/* void main() {
  final stream = Stream.fromIterable([10, 11, 12, 3, 4, 5, 6, 10]);
  Stream<String> transformStream =
      stream.transform(StreamTransformer.fromHandlers(
    handleData: (data, sink) {
      sink.add('transforming: $data');
    },
  ));
  transformStream.listen(print);
}
 */

// more easy
/* void main() {
  final stream = Stream.fromIterable([10, 11, 12, 3, 4, 5, 6, 10]);

  stream.map((event) => 'transforming: $event').listen(print);
} */

//async
/* void main() async {
  final stream = Stream.fromIterable([10, 11, 12, 3, 4, 5, 6, 10]);

  Stream<String> asyncMapStream = stream.asyncMap((event) {
    return Future.delayed(const Duration(milliseconds: 1000), () {
      return 'transforming: $event';
    });
  });

  await for (var value in asyncMapStream) {
    print(value);
  }
} */

//--FIXME: recommended async
void main() async {
  final stream = Stream.fromIterable([10, 11, 12, 3, 4, 5, 6, 10]);

  Stream<String> asyncMapStream = stream.asyncMap(
      (event) => Future.delayed(const Duration(milliseconds: 1000), () {
            return 'transforming: $event';
          }));
  asyncMapStream.listen(print);
}
