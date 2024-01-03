import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

void main() {
  final map = <String, dynamic>{
    'id': Uuid().v4(),
    'name': 'Dart Testing',
    'email': 'dart@test.com',
    'object': 'Map'
  };

  test('$map has the value map', () {
    expect(map, containsValue('Map'));
  });

  Object key = 'name';
  test('$map contains the Keys $key and the value dart testing ignore the case', () {
    expect(map, contains(key));
    final value = map[key];
    expect(value, equalsIgnoringCase('Dart Testing'));
  });

  test('$map contains the email pair and dart@test.com', () {
    expect(map, containsPair('email', 'dart@test.com'));
  });
}
