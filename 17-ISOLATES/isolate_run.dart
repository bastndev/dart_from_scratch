import 'dart:isolate';
// es contrapruducente but,
//It is very useful, when you do not need to exchange messages or isolate

void main() {
  Isolate.run(() async {
    await Future.delayed(const Duration(seconds: 2));
    print('Isolate end');
  });
  print('Program end');
}
