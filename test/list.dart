import 'package:test/test.dart';

void main() {
  final listA = [1, 2, 4, 6];

  test('$listA contains the value 2', () {
    expect(listA, contains(4));
  });

  test('$listA contains equals [1, 2, 4, 6] exact', () {
    expect(listA, orderedEquals([1, 2, 4, 6]));
  });

  test('$listA contains un order equals [1, 2, 4, 6] ', () {
    expect(listA, unorderedEquals([1, 2, 6, 4]));
  });

  
}
