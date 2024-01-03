import 'package:test/test.dart';

class Calculator {
  num result = 0.0;
  Calculator sum(List<num> numbers) {
    result = numbers.fold(
        result, (previousValue, element) => previousValue + element);
    return this;
  }
}

void main() {}
