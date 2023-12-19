//--- --- -TODO: You can see data
import 'dart:io';

void main() async { 
  final file = File('zz/');

  FileStat status = await file.stat();
  print(status);
}