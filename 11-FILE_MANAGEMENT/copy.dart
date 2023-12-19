// --- -FIXME: Audio and video are binary
import 'dart:io';

void main() async {
  const filesFolder = 'zz/';
  const imagePath = '${filesFolder}cat.jpg';
  const imageCopyPath = '${filesFolder}copy_cat2.jpg';

  File(imagePath).copy(imageCopyPath);
}
