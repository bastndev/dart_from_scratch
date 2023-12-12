/* void main() {
  Map<String, dynamic> data = {
    'name': 'programming',
    'web': 'http//bastndev.com',
    'curse': 'dart',
    'language': ['Dart'],
    'localization': {
      'web': 'http://udemy.com',
      'android': 'apk Udemy',
      'ios': 'app Udemy',
    },
    'price': null,
  };

  dynamic removeData = data.remove('country');
  print(removeData);

  dynamic removeData2 = data.remove('web');
  print(removeData2);

  data.removeWhere((key, value) => '$value'.contains('http'));
  print(data);

  data.removeWhere((key, value) => value == null);
  print(data);
}
 */

/* void main() {
  Map<String, dynamic> data = {
    'name': 'programming',
    'web': 'http//bastndev.com',
    'curse': 'dart',
    'language': ['Dart'],
    'localization': {
      'web': 'http://udemy.com',
      'android': 'apk Udemy',
      'ios': 'app Udemy',
    },
    'price': null,
  };
  print(data);
}
 */

// --- --- --- change name
/* void main() {
  final newMap = {
    'name': 'Developers',
    'curse': 'flutter',
  };

  newMap['name'] = 'new map';
  print(newMap);

  String updateValue = newMap.update(
    'key',
    (value) => 'Not exist',
    ifAbsent: () => 'NULL',
  );
  print(updateValue);
  print(newMap);
}
 */