import 'dart:isolate';

void main() {
  Isolate.run(() async {
    await Future.delayed(const Duration(seconds: 2));
    print('Isolate end');
  });
  print('Program end');
}
