/* void main() async { 
  final stream = Stream.fromIterable ([1,2,3,3,4,5,6,6]);

  final list = await stream.toList();
  print(list);
} */

void main() async { 
  final stream = Stream.fromIterable ([1,2,3,3,4,5,6,6]);

  final sett = await stream.toSet();
  print(sett);
}