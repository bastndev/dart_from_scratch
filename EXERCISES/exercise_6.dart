import 'dart:io';

/* void main() {
  int level = 10;
  final char = '* ';

  for (int i = 0; i < level; i++) {
    int space = (level - 1) - i;
    int chars = level - space;
    for (int j = 0; j < space; j++) {
      stdout.write(' ');
    }
    for (int j = 0; j < chars; j++) {
      stdout.write(char);
    }
    print('');
  }
} */

void main() {
  int level = 5;
  final char = '* ';

  for (int i = 0; i < level; i++) {
    int space = (level - 1) - i;
    int chars = level - space;

    stdout.write(' ' * space);

    stdout.write(char * chars);

    print('');
  }
}
