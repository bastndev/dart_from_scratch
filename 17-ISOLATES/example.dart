import 'dart:developer';
import 'dart:isolate';

void main() async {
  final receivePort = ReceivePort();

  const iterations = 100000;

  final message = [receivePort.sendPort, iterations];
  String isolate2ID = '';

  receivePort.listen((message) {
    print('Message received from isolate 2: $message');
    String mainIsolateID =
        Service.getIsolateId(Isolate.current) ?? "Main isolate don't have ID";
    print('Isolate 1: $mainIsolateID');
    print('Isolate 2: $isolate2ID');
  });

  final isolate2 = await Isolate.spawn((message) {
    print('Started isolate 2');
    SendPort sendPort = message.first as SendPort;
    int iterations = message.last as int;
    int total = _createLoop(iterations, 'Isolate 2');
    sendPort.send(total);
  }, message);

  isolate2ID = Service.getIsolateId(isolate2) ?? "They don't have isolate 2 ID";

  _createLoop(iterations, 'Main isolate');
}

int _createLoop(int iterations, String isolateName) {
  int total = 0;
  for (int i = 0; i < iterations; i++) {
    total += i;
    print('$isolateName: $total');
  }
  return total;
}
