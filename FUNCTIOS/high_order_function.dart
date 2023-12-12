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

void main() {
  runner(countTo);

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
