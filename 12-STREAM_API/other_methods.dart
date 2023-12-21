/* void main() async {
  final stream = Stream.fromIterable([6, 5, 4, 3, 2, 1]);

  final containsFive = await stream.contains(5);
  print(containsFive);
  final containsTen =  await stream.contains(10);
  print(containsTen);
} */

/* void main() async {
  final stream = Stream.fromIterable([6, 5, 4, 3, 2, 1]);

  final containsGreaterThanThree = await stream.any((element) => element > 3);
  print(containsGreaterThanThree);
} */

/* void main() async {
  final stream = Stream.fromIterable([6, 5, 4, 3, 2, 1]);

  final eventGreaterThanFour = await stream.firstWhere((element) => element > 4);
  print(eventGreaterThanFour);
} */

/* void main() async {
  final stream = Stream.fromIterable([6, 5, 4, 3, 2, 1]);

  final eventGreaterThanFour = await stream.firstWhere((element) => element < 4);
  print(eventGreaterThanFour);
} */
// -- with error
/* void main() async {
  final stream = Stream.fromIterable([6, 5, 4, 3, 2, 1]);

  final eventGreaterThanFour = await stream.firstWhere((element) => element > 40);
  print(eventGreaterThanFour);
} */

/* void main() async {
  final stream = Stream.fromIterable([6, 5, 4, 3, 2, 1]);

  final eventGreaterThanFour = await stream.firstWhere((element) => element > 40, orElse: () => -1,);
  print(eventGreaterThanFour);
} */

/* void main() async {
  final stream = Stream.fromIterable([6, 5, 4, 3, 2, 1]);
  

  try {
    final event= await stream.elementAt(5);
    print(event);
  } catch (err) {
    print("Papi fix your mistake: $err");
    
  }
} */

/* void main() async {
  final stream = Stream.fromIterable([6, 5, 4, 3, 2, 1]);
  

  try {
    final event= await stream.elementAt(1);
    print(event);
  } catch (err) {
    print("Papi fix your mistake: $err");
    
  }
} */

void main() async {
  final stream = Stream.fromIterable([6, 5, 4, 3, 2, 1]);
  

  try {
    final event= await stream.elementAt(10);
    print(event);
  } catch (err) {
    print("Papi fix your mistake: $err");
    
  }
}