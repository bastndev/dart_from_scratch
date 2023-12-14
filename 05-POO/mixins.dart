// Método que sea utilizado en varias clases
// Method that is used in several classes

mixin Maths {
  num sum(num a, num b) => a + b;
  num subtract(num a, num b) => a - b;
  num multiply(num a, num b) => a * b;
  num divide(num a, num b) {
    if (b == 0) {
      throw Exception('No divide between 0 ');
    }
    return a / b;
  }
}

class Computer with Maths {}

class Mobile with Maths {}

class Calculator with Maths {}

void main() {
  final computer = Computer();
  final mobile = Mobile();
  final calculator = Calculator();

  print("The sum between ${computer.sum(1, 2)}");
  print("The sum between ${mobile.divide(1, 2)}");
  print("The sum between ${calculator.multiply(1, 2)}");
}
