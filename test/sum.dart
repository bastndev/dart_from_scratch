import 'package:test/test.dart';

main() {
  int a = 1;
  int b = 2;
  test('Sum of $a + $b', () {
    num sum = a + b;
    expect(sum, equals(3));
    expect(sum, isNot(1));
    expect(sum, isA<int>());
    expect(num, isNot(isA<String>()));
  });
}
