import 'dart:isolate';

void main() {
  final receivePort = ReceivePort();

  const iterations = 100000;

  final message = [receivePort.sendPort, iterations];

  receivePort.listen((message) {
    print('Message received from isolate 2: $message');
  });

  Isolate.spawn((message) {
    print('Started isolate 2');
    SendPort sendPort = message.first as SendPort;
    int interations = message.last as int;
  }, message);
}

int _createLoop(int iterations, String isolateName) {
  int total = 0;
  for (int i = 0; i < iterations; i++) {
    total += i;
    print('$isolateName: $total');
  }
  return total;
}
