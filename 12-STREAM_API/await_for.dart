void main() async {
  final stream = Stream.fromIterable([1, 2, 3, 3, 4, 5, 6, 6]);

  await for (final data in stream) {
    print(data);
  }
  print("I run after (await for )");
}
