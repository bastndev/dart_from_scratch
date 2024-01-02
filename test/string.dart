import 'package:test/test.dart';

void main() {
  var str = 'dart';
  var strB = 'dart and flutter';

  test('$str Contains the letter r', () {
    expect(str, contains('r'));
  });

  test('$str Start the letter D', () {
    expect(str, startsWith('d'));
    expect(str, isNot(startsWith('D')));
  });

  test('$str is equal to dart and ignore case', () {
    expect(str, equals('dart'));
    expect(str, equalsIgnoringCase('DART'));
  });

  const dartFlutter = 'dart         and         flutter';
  test('$strB is equal to dartFlutter, ignore spaces', () {
    expect(strB, equalsIgnoringWhitespace(dartFlutter));
    expect(strB, isNot(equals(dartFlutter)));
  });
}
