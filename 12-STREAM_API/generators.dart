void main() {
  print("Start program");

  getStream().listen(print);

  print("Finished program");
}

Stream<int> getStream() {
  return Stream.fromIterable([1, 2, 3, 4, 5]);
}
