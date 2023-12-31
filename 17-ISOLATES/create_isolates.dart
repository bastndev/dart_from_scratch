import 'dart:developer';
import 'dart:isolate';

/* void main() {
  final mainIsolate = Isolate.current;
  final mainIsolateID = Service.getIsolateId(mainIsolate);
  print(mainIsolateID);

  final number = 5;


  Isolate.spawn((message) {
    print("Message inside isolate: $message");
  }, number);
}
 */

/* void main() {
  final mainIsolate = Isolate.current;
  final mainIsolateID = Service.getIsolateId(mainIsolate);
  print(mainIsolateID);

  final list = [1, 2, 3, 4, 5];

  Isolate.spawn((message) {
    print("Message inside isolate: $message");
  }, list);
} */

void main() {
  final mainIsolate = Isolate.current;
  final mainIsolateID = Service.getIsolateId(mainIsolate);
  print(mainIsolateID);

  final user = User(name: 'Gohit', email: 'pablito@gmail.com');

  Isolate.spawn((message) {
    print("Message inside isolate: $message");
  }, user);
}

class User {
  final String name;
  final String email;
  User({required this.name, required this.email});

  @override
  String toString() => 'User(name: $name, email: $email)';
}
