void main() {
  String name = 'Bastian';
  String nameCopy = '';
  int counter = 0;

  while (name != nameCopy) {
    final char = name[counter];
    nameCopy += char;
    counter++;
  }
  print("$name have $counter character");
}
