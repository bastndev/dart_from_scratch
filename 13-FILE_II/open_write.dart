import 'dart:io';

/* void main() {
  final file = File('files/books.csv');
  final copyFile = File('files/booksCopy.csv');

  final readStream = file.openRead();

    final sink = copyFile.openWrite(mode: FileMode.append);
  readStream.listen((event) {
    sink.add(event);
  });
} */

void main() {
  final file = File('files/books.csv');
  final copyFile = File('files/booksCopy2.csv');

  final readStream = file.openRead();

  readStream.pipe(copyFile.openWrite());
}