import 'package:test/test.dart';

void main() {
  var str = 'dart';
  var strB = 'dart and flutter';

  test('$str Contains the letter r', () {
    expect(str, contains('r'));
  });

  test('$str Start the letter D', () {
    expect(str, startsWith('d'));
  });
}
