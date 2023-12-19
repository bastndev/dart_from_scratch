import 'dart:io';

/* void main() async {
  File file = File('zz/long.txt');
  print(file.lengthSync());
} */

void main() async {
  File file = File('zz/long.txt');
  print(file.kbSync());
}

extension FileSize on File {
  static const int ratio = 1024;

  // Future<num> kb() async {
  //   return (await length()) / ratio;
  // }

  // Future<num> mb() async {
  //   return (await kb()) / ratio;
  // }

  // Future<num> gb() async {
  //   return (await mb()) / ratio;
  // }

  num kbSync() {
    return lengthSync() / ratio;
  }

  num mbSync() {
    return kbSync() / ratio;
  }

  num gbSync() {
    return mbSync() / ratio;
  }
}
