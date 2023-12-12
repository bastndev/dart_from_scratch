/* void main() {
  runner(countTo);

  try {
    runner(trowException);
  } catch (ex) {
    print(ex);
  }
  //Anonymous function ()
  runner(() {
    countTo(20000000);
  });

  //Anonymous function() arrow
  runner(() => countTo(20000000));
}

trowException() {
  throw Exception('I failed');
}

void runner(Function function) {
  final start = DateTime.now().millisecondsSinceEpoch;
  try {
    function();
  } catch (ex) {
    rethrow;
  }

  final end = DateTime.now().millisecondsSinceEpoch;
  print('Execution time ${end - start} ms');
}

void countTo([int number = 1000000]) {
  for (int i = 0; i < number; i++) {}
}
 */

import 'dart:math';

void main() {
  // a(b);
  a((number) {
    print("$number The number is generate is a");
    b(number);
    b(10);
  });
  a((number) => b(number));
}

void b(int i) {
  print(i);
}

void a(Function(int) function) {
  final random = Random().nextInt(20);
  function(random);
}

void runner(Function function) {
  final start = DateTime.now().millisecondsSinceEpoch;
  try {
    function();
  } catch (ex) {
    rethrow;
  }

  final end = DateTime.now().millisecondsSinceEpoch;
  print('Execution time ${end - start} ms');
}

void countTo([int number = 1000000]) {
  for (int i = 0; i < number; i++) {}
}
