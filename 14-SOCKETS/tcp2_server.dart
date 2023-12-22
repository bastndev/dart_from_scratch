import 'dart:async';
import 'dart:io';

void main() async {
  ServerSocket serverSocket = await ServerSocket.bind('127.0.0.1', 4040);

  serverSocket.listen((socket) {
    final remoteAddress = socket.remoteAddress;
    final port = socket.remotePort;

    print('Receiving data from $remoteAddress:$port');

    socket.transform<List<int>>(StreamTransformer.fromHandlers(handleData: (data, sink) {
      sink.add(data);
    })).pipe(File('files/long_copy.txt').openWrite());
  });
}
