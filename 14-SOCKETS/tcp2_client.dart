import 'dart:io';

void main() async {
  Socket socket = await Socket.connect('127.0.0.1', 4040);
  final file = File('files/long.txt');
  socket.listen((event) {
    print('Server response!');
    final response = String.fromCharCodes(event);
    print(response);
  });

  socket.addStream(file.openRead());
}
