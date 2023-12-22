import 'dart:io';

void main() async {
  final localhost = '127.0.0.1';
  final port = 16001;
  final receiverPort = 16000;

  final udpSocket = await RawDatagramSocket.bind(InternetAddress.anyIPv4, port);
  _sendMessage(udpSocket, localhost, receiverPort);

  udpSocket.listen((event) {
    final datagram = udpSocket.receive();
    if (datagram != null) {
      final bytes = datagram.data;
      final decoded = String.fromCharCodes(bytes);
      print("Message received: $decoded");
      _sendMessage(udpSocket, localhost, receiverPort);
    }
  });
}

_sendMessage(RawDatagramSocket socket, String address, int port) {
  stdout.write('Write the message: ');
  final message = stdin.readLineSync() ?? '';
  socket.send(message.codeUnits, InternetAddress(address), port);
}
