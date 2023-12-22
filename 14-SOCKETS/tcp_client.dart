import 'dart:io';

void main() async {
  Socket socket = await Socket.connect('127.0.0.1', 4040);

  socket.listen((event) {
    print('Server response');
    final response = String.fromCharCodes(event);
    print(response);
  });

  stdout.write('Write a message: ');
  final msg = stdin.readLineSync() ?? '';
  socket.write(msg);
}
