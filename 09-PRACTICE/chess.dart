/* void main() {
  String line = "";
  for (int box = 0; box < 8; box++) {
    if (box % 2 == 0 && line.length % 2 == 0) {
      line = line + " *";
    }
    if (box % 2 == 0 && line.length % 2 != 0) {
      line = line + " o";
    }
    if (box % 2 != 0 && line.length % 2 == 0) {
      line = line + " o";
    }
    if (box % 2 != 0 && line.length % 2 != 0) {
      line = line + " o";
    }
  }
  print(line);
}
 */
void main() {
  for (int row = 0; row < 8; row++) {
    String line = "";
    for (int col = 0; col < 8; col++) {
      if ((row + col) % 2 == 0) {
        line = "$line ▢";
      } else {
        line = "$line ⬛";
      }
    }
    print(line);
  }
}
