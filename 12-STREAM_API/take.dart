//--- take
/* void main() { 
  final stream = Stream.fromIterable([6,5,4,3,2,1,]);

  stream.take(1).listen((event) {
    print("The first number i: $event.");
  });
} */

/* void main() { 
  final stream = Stream.fromIterable([6,5,4,3,2,1,]);

  stream.take(3).listen((event) {
    print("The first number i: $event.");
  });
} */

/* void main() { 
  final stream = Stream.fromIterable([6,5,4,3,2,1,]);

  stream.take(30).listen((event) {
    print("The first number i: $event.");
  });
} */

// ---  skip
/* void main() { 
  final stream = Stream.fromIterable([6,5,4,3,2,1,]);

  stream.skip(3).listen((event) {
    print("The first number i: $event.");
  });
} */

/* void main() { 
  final stream = Stream.fromIterable([6,5,4,3,2,1,]);

  stream.skip(30).listen((event) {
    print("The first number i: $event.");
  });
} */

// --- Take while, where
/* void main() {
  final stream = Stream.fromIterable([6, 5, 4, 3, 2, 1]);

  stream.takeWhile((element) => element > 3).listen(print);
} */

/* void main() {
  final stream = Stream.fromIterable([6, 5, 4, 3, 2, 1]);

  stream.where((element) => element > 3).listen(print);
} */

void main() {
  final stream = Stream.fromIterable([6, 5, 4, 3, 2, 1]);

  stream.skipWhile((element) => element > 3).listen(print);
}