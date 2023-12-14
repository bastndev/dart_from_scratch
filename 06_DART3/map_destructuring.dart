//--- --- -TODO: Map destructuring
void main() {
  final map = {
    'name': 'Bastian',
    'age': 25,
    'country': 'peru',
    'language': ['english', 'spanish']
  };

  var {
    'name': name as String,
    'age': age,
    'country': country,
    'language': [language1, language2] as List<String>
  } = map;

  print(name);
  print(age);
  print(country);
  print(language1);
  print(language2);
}
