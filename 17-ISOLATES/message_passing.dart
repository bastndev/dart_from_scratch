import 'dart:developer';
import 'dart:isolate';

void main() {
  final mainIsolate = Isolate.current;
  final mainIsolateID = Service.getIsolateId(mainIsolate);
  print(mainIsolateID);

  final receivePor = ReceivePort();

  receivePor.listen((message) {
    print(message);
    receivePor.close();
  });

  final user = User(name: 'Gohit', email: 'test@gmail.com');
  final message = [receivePor.sendPort, user];

  Isolate.spawn((message) async {
    final sendPort = message.first as SendPort;
    await Future.delayed(const Duration(seconds: 3));
    sendPort.send("Sending the isolate to the main user.${message.last}");
  }, message);
}

class User {
  final String name;
  final String email;
  User({required this.name, required this.email});

  @override
  String toString() => 'User(name: $name, email: $email)';
}
