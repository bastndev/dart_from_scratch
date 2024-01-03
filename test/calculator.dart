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
      throw Exception("don't know how to divide between 0");
    }
    result = numbers.fold(
        result, (previousValue, element) => previousValue / element);
    return this;
  }

  num get res => result;
}

void main() {
  group('Name of test', () {
    late Calculator calculator;
    // setUpAll(() {
    //   calculator = Calculator();
    // });
    setUp(() {
      calculator = Calculator();
    });
    test('Sum', () {
      num result = calculator.sum([1]).res;
      expect(result, 1);
      result = calculator.sum([2, 3, 4]).res;
      expect(result, 10);
    });

    test('Subtract', () {
      final calculator = Calculator();
      expect(calculator.subtract([1, 2]).res, -3);
    });

    test('Division', () {
      void testDivision() {
        try {
          calculator.divide([1, 2, 0, 3]);
        } catch (_) {
          rethrow;
        }
      }

      expect(testDivision, throwsA(predicate((ex) => ex is Exception)));
    });

    test('Sum + Division', () {
      calculator.sum([1, 5, 4]);
      final res = calculator.divide([2, 5]).res;
      expect(res, 1);
    });

    test('float numbers', () {
      final result = calculator.sum([1.1,2.1,3.1,4.1]).multiply([3]).divide([10]).subtract([3]).res;
      // print(result);
      expect(result, 0.12);
    });
  });
}
