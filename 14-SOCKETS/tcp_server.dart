import 'dart:convert';
import 'dart:io';

void main() async {
  ServerSocket serverSocket = await ServerSocket.bind('127.0.0.1', 4040);

  serverSocket.listen((socket) {
    final remoteAddress = socket.remoteAddress;
    final port = socket.remotePort;

    print('Receiving data from $remoteAddress:$port');

    socket.listen((event) {
      final msg = String.fromCharCodes(event);
      print('\t Message of client: $msg');
      socket.write(jsonEncode({'Message:' 'Hello, from the server'}));
    });
  });
}
