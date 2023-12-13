class A {
  static int number = 1;
  static printNumber() => print(number);
}

void main() {
  final a = A();
  A.printNumber();
}
