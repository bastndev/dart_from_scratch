// import 'dart:convert';
import 'dart:typed_data';
import 'dart:io';
import 'package:encrypt/encrypt.dart';

void main() {
  final plainText = 'Hello, World!';
  final key = Key(Uint8List.fromList([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]));

  final encryptedText = encrypt(plainText, key);
  print('Encrypted Text: $encryptedText');

  final file = File('zz/practice.txt');
  saveToFile(file, encryptedText);

  final decryptedText = decryptFromFile(file, key);
  print('Decrypted Text: $decryptedText');
}

String encrypt(String plainText, Key key) {
  final iv = IV(Uint8List(16));
  final encrypter = Encrypter(AES(key, mode: AESMode.cbc));

  final encrypted = encrypter.encrypt(plainText, iv: iv);
  return encrypted.base64;
}

void saveToFile(File file, String encryptedText) {
  file.writeAsStringSync(encryptedText);
  print('Encrypted Text saved to file: ${file.path}');
}

String decryptFromFile(File file, Key key) {
  final iv = IV(Uint8List(16));
  final encrypter = Encrypter(AES(key, mode: AESMode.cbc));

  final encryptedText = file.readAsStringSync();
  final decrypted = encrypter.decrypt64(encryptedText, iv: iv);
  return decrypted;
}
