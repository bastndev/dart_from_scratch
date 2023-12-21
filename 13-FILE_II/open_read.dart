import 'dart:io';

/* void main() {
  final file = File('files/books.csv');

  final readStream = file.openRead();

  readStream.listen((event) {
    print(event);
  });
}
 */

/* void main() {
  final file = File('files/books.csv');

  final readStream = file.openRead();

  readStream.listen((event) {
    final text = String.fromCharCodes(event);
    print(text);
  });
} */

void main() {
  final file = File('files/books.csv');

  final readStream = file.openRead(0,2);

  readStream.listen((event) {
    final text = String.fromCharCodes(event);
    print(text);
  });
}