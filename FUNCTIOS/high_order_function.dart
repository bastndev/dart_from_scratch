void main() {
  runner(countTo);

  //Anonymous function
  runner(() {
    countTo(20000000);
  });

  //Anonymous function arrow
  runner(() => countTo(20000000));
}

void runner(Function function) {
  final start = DateTime.now().millisecondsSinceEpoch;

  function();

  final end = DateTime.now().millisecondsSinceEpoch;
  print('Execution time ${end - start} ms');
}

void countTo([int number = 1000000]) {
  for (int i = 0; i < number; i++) {}
}
