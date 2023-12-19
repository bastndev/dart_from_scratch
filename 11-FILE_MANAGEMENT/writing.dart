import 'dart:io';

void main() async {
  const filesFolder = 'zz/';
  const testPath = '${filesFolder}test.txt';

  final file = File(testPath);

  int interaction = 10;
  for (int i = 0; i < interaction; i++) {
    await file.writeAsString("Writing text in test ${i + 1} \n", mode: FileMode.append);
  }
}
