/* import 'dart:async';

void main() {
  print("1: Start the program");
  // --- --- asynchronous
  scheduleMicrotask(() {
    print("-: First microtask");
  });

  Future.value(10).then((value) => print("2: This is value is $value"));
  print("3: Finish program");
}
 */