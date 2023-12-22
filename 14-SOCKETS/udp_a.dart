import 'dart:io';

void main() async {
  final localhost = '120.0.0.1';
  final port = 16000;
  final receiverPort = 16001;

  final udpSocket = await RawDatagramSocket.bind(InternetAddress.anyIPv4, port);

  udpSocket.listen((event) {
    final datagram = udpSocket.receive();
    if (datagram != null) {
      final bytes = datagram.data;
      final decoded = String.fromCharCodes(bytes);
      print("Message received: $decoded");
      stdout.write('Write the message: ');
      final message = stdin.readLineSync() ?? '';
      udpSocket.send(
          message.codeUnits, InternetAddress(localhost), receiverPort);
    }
  });
}
