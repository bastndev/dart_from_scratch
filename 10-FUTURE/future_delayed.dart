/* void main() {
  Future.delayed(Duration(milliseconds: 900), () {
    return 1;
  }).then(print);
} */

/* void main() {
  Future.delayed(Duration(milliseconds: 900), () {
    return print("Hello");
  }).then(print);
}
 */

/* void main() {
  Future.delayed(const Duration(milliseconds: 900)).then((_) {
    return print("This will print within 1 second");
  });
} */

/* void main() {
  Future.delayed(const Duration(seconds: 2)).then((_) {
    return print("Hell parce");
  });
}
 */

void main() {
  Future.delayed(const Duration(seconds: 1)).then((_) => print("Hello word"));
}
