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

import 'dart:async';

/* void main() {
  print("1: Start the program");
  // --- --- asynchronous 
  scheduleMicrotask(() {
    print("-: First microtask");
  });
  scheduleMicrotask(() {
    print("--: Second microtask");
  });
  scheduleMicrotask(() {
    print("---: Third microtask");
  });
  //--- The future does not begin until microtasks work
  Future.value(10).then((value) => print("2: This is value is $value"));
  print("3: Finish program");
} */

void main() {
  print("1: Start the program");

  scheduleMicrotask(() {
    print("-: First microtask");
  });
  scheduleMicrotask(() {
    print("--: Second microtask");
  });
  scheduleMicrotask(() {
    print("---: Third microtask");
  });

  Future.microtask(() => Future.value(500).then(print));
  Future.microtask(() => Future.value(900).then(print));
  Future.value(10).then((value) => print("2: This is value is $value"));
  print("3: Finish program");
}
