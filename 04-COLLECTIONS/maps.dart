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

  final containsName = data.containsKey('name');
  print(containsName);

  final containsProgramming = data.containsValue('programming');
  print(containsProgramming);

  final contains = data.containsValue(['Dart']);
  print(contains);

  final name = data['name'];
  final localization = data['localization'];

  print(name);
  print(localization['ios']);

  final country = data['country'];
  print(country);

  data['country'] = 'Peru';
  print(data);

  //Replace
  data.addAll({
    'language': 'spanish',
  });
  print(data);
  //change or add something new
  data.addAll({
    'languages': 'spanish',
  });
  print(data);
}
