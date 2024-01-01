import 'dart:io';

/* void main() async {
  final dir = await Process.start('dir', [], runInShell: true);

  dir.stdout.listen((event) {
    print(String.fromCharCodes(event));
  });
}
 */

void main() async {
  final dir = await Process.run('dir', [], runInShell: true);
  print(dir.stdout);
}
