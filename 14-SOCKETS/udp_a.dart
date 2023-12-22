import 'dart:io';

void main() async {
  final localhost = '127.0.0.1';
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

class DatagramLogger {
  static const path = '14-SOCKETS/log';
  static File? _file;

  DatagramLogger._internal() {
    _file = File(path);
  }

  static DatagramLogger? _logger;
  static DatagramLogger get instance => _logger ??= DatagramLogger._internal();

  log(Datagram datagram) {
    final date = DateTime.timestamp().toIso8601String();
    final message = String.fromCharCodes(datagram.data);
    final address = datagram.address.address;
    final port = datagram.port;

    final text = '{$date; $message; $address; $port}\n';
    _file?.writeAsStringSync(text, mode: FileMode.append);
  }
}
