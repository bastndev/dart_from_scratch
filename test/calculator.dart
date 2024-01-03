import 'package:test/test.dart';

class Calculator {
  num result = 0.0;
  Calculator sum(List<num> numbers) {
    result = numbers.fold(
        result, (previousValue, element) => previousValue + element);
    return this;
  }

  Calculator subtract(List<num> numbers) {
    result = numbers.fold(
        result, (previousValue, element) => previousValue - element);
    return this;
  }

  Calculator multiply(List<num> numbers) {
    result = numbers.fold(
        result, (previousValue, element) => previousValue * element);
    return this;
  }

  Calculator divide(List<num> numbers) {
    if (numbers.any((element) => element == 0)) {
      throw Exception("don't know how to divide");
    }
    result = numbers.fold(
        result, (previousValue, element) => previousValue / element);
    return this;
  }
  num get res => result;
}

void main() {}
