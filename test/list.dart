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

  test('$listA contains value 6  ', () {
    expect(listA, anyElement(6));
  });
  test(' all the elements of the $listA not have the value 6  ', () {
    expect(listA, isNot(everyElement(6)));
  });

  test('$listA contains element 6 one time  ', () {
    expect(listA, containsOnce(6));
  });
}
