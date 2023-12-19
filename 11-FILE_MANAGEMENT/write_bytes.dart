// --- -FIXME: Audio and video are binary
import 'dart:io';

void main() async {
  const filesFolder = 'zz/';
  const imagePath = '${filesFolder}cat.jpg';
  const imageCopyPath = '${filesFolder}copy_cat.jpg';

  final catFile = File(imagePath);

  final bytes = await catFile.readAsBytes();

  final catCopyFile = File(imageCopyPath);
  catCopyFile.writeAsBytes(bytes);
}
