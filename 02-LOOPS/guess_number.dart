import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Enter a number: ');
  final input = stdin.readLineSync() ?? '';
  int random = Random().nextInt(20);
}
