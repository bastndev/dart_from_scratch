/* void main() {
  print("Start program");

  getStream().listen(print);

  print("Finished program");
}

Stream<int> getStream() {
  return Stream.fromIterable([1, 2, 3, 4, 5]);
}
 */

/* void main() async{
  print("Start program");

  final list = await getGeneration().toList();
  print(list);

  print("Finished program");
}

Stream<int> getGeneration() async* {
  final list = [5, 6, 9];
  for (int n in list) {
    yield n;
    yield n + 1;
    yield n + 2;
  }
} */

/* void main() {
  print("Start program");

  final list =  getGeneration().toList();
  print(list);

  print("Finished program");
}

Iterable<int> getGeneration() sync* {
  final list = [5, 6, 9];
  for(int n in list) {
    yield n;
    yield n+1;
    yield n+2;
  }
}
 */
/* void main() {
  print("Start program");

  final list = getGeneration().toList();
  print(list);

  print("Finished program");
}

Iterable<int> getGeneration() sync* {
  final list = [5, 6, 7];
  for (int n in list) {
    yield n;
    yield n+1;
    yield n+2;
  }
} */

import 'dart:math';

void main() {
  print("Start program");

  getNumbers().listen(print);


  print("Finished program");
}
//- function getNumbers()
Stream<int> getNumbers() async* {
  Stream stream = Stream.fromIterable([5, 6, 9]);
  await for (int data in stream) {
    yield pow(data, 2).toInt();
    await Future.delayed(const Duration(seconds: 1));
    yield data;
  }
}
