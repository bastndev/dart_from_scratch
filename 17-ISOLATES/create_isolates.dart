import 'dart:developer';
import 'dart:isolate';

void main() {
  final mainIsolate = Isolate.current;
  final mainIsolateID = Service.getIsolateId(mainIsolate);
  print(mainIsolateID);

  final number = 5;

  Isolate.spawn((message) {
    print("Message inside isolate: $message");
  }, number);
}
