//--- --- -TODO: You can see data
import 'dart:io';

/* void main() async {
  final file = File('zz/');

  FileStat stat = await file.stat();
  print(stat);
  print(stat.type == FileSystemEntityType.directory);
}
 */

void main() async {
  final file = File('zz/test.txt');

  FileStat stat = await file.stat();
  print(stat);
  print(stat.type == FileSystemEntityType.file);
}
