import 'dart:io';

void main() async {
  final directory = Directory('.');

  print(directory.existsSync());

  final stream = directory.watch();
  // ignore: unused_local_variable
  final subscription = stream.listen(print);
}
