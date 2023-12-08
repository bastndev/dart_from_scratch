import 'dart:math';

void main() {
  int random = Random().nextInt(6);

  switch (random) {
    case 0:
      print('$random Monday');
      break;
    case 1:
      print('$random Tuesday');
      break;
    case 2:
      print('$random Wednesday');
      break;
    case 3:
      print('$random Thursday');
      break;
    case 4:
      print('$random Friday');
      break;
    case 5:
      print('$random Saturday');
      break;
    case 6:
      print('$random Sunday');
      break;
  }
}
