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

  data.forEach((key, value) {
    print('$key: $value');
  });
} */

void main() {
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

  for (MapEntry entry in data.entries) {
    print('${entry.key}: ${entry.value} ');
  }
}
