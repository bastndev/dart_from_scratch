import 'package:test/test.dart';

void main() {
  final listA = [1, 2, 4, 6];

  test('$listA contains the value 2', () {
    expect(listA, contains(4));
  });
}
