// --- --- -TODO:
/* void main() {
  int limit = 10;
  int number = 0;

  while (number < limit) {
    print(++number);
  }
} */

void main() {
  int limit = 10;
  // int number = 0;

  while (true) {
    if (limit < 6) {
      break;
    }
    print(--limit);
  }
}
