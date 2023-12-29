import 'dart:developer';
import 'dart:isolate';

void main() {
  final mainIsolate = Isolate.current;
  final mainIsolateID = Service.getIsolateId(mainIsolate);
  print(mainIsolateID);

  final receivePor = ReceivePort();
  final user = User(name: 'Gohit', email: 'test@gmail.com');
  final message = [receivePor.sendPort, user];

  Isolate.spawn((message) {
    
  }, message);
}

class User {
  final String name;
  final String email;
  User({required this.name, required this.email});

  @override
  String toString() => 'User(name: $name, email: $email)';
}
