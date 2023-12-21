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
