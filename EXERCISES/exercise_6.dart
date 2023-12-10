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

/* void main() {
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
 */

/* void main() {
  int level = 8;
  final char = '* ';

  for (int i = 0; i < level; i++) {
    int space = (level - 1) - i;
    int chars = level - space;

    stdout.write(' ' * space + char * chars);
    print('');
  }
}
 */

/* void main() {
  List<String> name = [
    '  *   *  ',
    ' * * * * ',
    '*       *',
    '*       *',
    '*       *',
  ];

  for (String line in name) {
    print(line);
  }
} */

/* void main() {
  List<String> letters = [
    '  ***   ',
    ' *   *  ',
    '*       ',
    '*  ***  ',
    '*     * ',
    ' * * *  ',
  ];

  for (int i = 0; i < letters[0].length; i++) {
    String line = '';
    for (String letter in letters) {
      line += letter[i];
    }
    print(line);
  }
} */

/* void main() {
  int sideLength = 5;
  final char = ' *';

  for (int i = 0; i < sideLength; i++) {
    for (int j = 0; j < sideLength; j++) {
      stdout.write(char);
    }
    print('');
  }
}
 */
void main() {
  int height = 6;
  final char = '*';

  for (int i = 0; i < height; i++) {
    for (int j = 0; j < i; j++) {
      stdout.write(' ');
    }

    for (int k = 0; k < (2 * (height - i)) - 1; k++) {
      stdout.write(char);
    }

    print('');
  }
}
