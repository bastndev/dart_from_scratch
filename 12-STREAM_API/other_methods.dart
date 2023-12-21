void main() async {
  final stream = Stream.fromIterable([6, 5, 4, 3, 2, 1]);

  final containsFive = await stream.contains(5);
  print(containsFive);
  final containsTen =  await stream.contains(10);
  print(containsTen);
}
