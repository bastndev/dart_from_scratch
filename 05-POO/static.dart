/* class A {
  static int number = 1;
  static printNumber() => print(number);
}

void main() {
  final a = A();
  A.printNumber();
}
 */

// --- --- --- Recommended no muted ne static, thanks
import 'dart:math';

class Power {
  static int _exponent = 2;
  static int get exponent => _exponent;

  static num power(int number) => pow(number, exponent);

  changeExponent(int exp) {
    _exponent = exp;
  }

  int get exp => _exponent;
}

void main() {
  final power1 = Power();
  final power2 = Power();
  print(Power.power(10)); //100

  power1.changeExponent(3);
  print('power1: ${power1.exp}');
  print('power2: ${power2.exp}');

  print(Power.power(10));
}
