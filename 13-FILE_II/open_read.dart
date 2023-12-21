import 'dart:io';

void main() {
  final file = File('files/books.csv');

  final readStream = file.openRead();

  readStream.listen((event) {
    print(event);
  });
}
