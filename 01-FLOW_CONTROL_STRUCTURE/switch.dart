import 'dart:math';

void main() {
  int random = Random().nextInt(7);
  print(random);

  switch (random) {
    case 0:
      print('Monday');
      break;
    case 1:
      print('Tuesday');
      break;
    case 2:
      print('Wednesday');
      break;
    case 3:
      print('Thursday');
      break;
    case 4:
      print('Friday');
      break;
    case 5:
      print('Saturday');
      break;
    default:
      print('Sunday');
  }
}
