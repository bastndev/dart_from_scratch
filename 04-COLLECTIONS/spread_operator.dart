// --- --- -TODO: Copy the information
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

  final dataCopy = {...data};
  print(dataCopy);
} */

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  final copyNumbers = {...numbers};
  print(copyNumbers);

  print(numbers);

  print('$numbers = $copyNumbers ');
}
