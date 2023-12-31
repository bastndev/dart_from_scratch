// --- --- --- -TODO: Recursion
void main() {
  final data = {
    'name': 'Bastian',
    'lastName': 'Gohit',
    'country': 'Spain',
    'courseInfo': {
      'name': 'Dart 3.0',
      'language': 'Dart',
      'extraInfo': {
        'availability': 'worldwide',
        'language': 'Spanish',
        'length': '16 hours',
        'videosNumber': 255,
      }
    }
  };
  print(makeMapPrettier(data));
}

String makeMapPrettier(Map<dynamic, dynamic> map, [int level = 1]) {
  final spaces = '  ';
  final lineJump = '\n';
  final separator = ':';
  final keys = map.keys;
  final comma = ',';

  final green = '\u001b[33m';
  final yellow = '\u001b[35m';
  final reset = '\u001b[0m';
  final blue = '\u001b[36m';
  final openChar = '$blue{$lineJump$reset';
  final closeChar = '$lineJump${spaces * (level - 1)}$blue}$reset';

  String str = openChar;
  for (final key in keys) {
    final value = map[key];
    if (value is Map) {
      str += spaces * level + yellow + key + separator + reset;
      str += makeMapPrettier(value, level + 1);
    } else {
      str += spaces * level +
          yellow +
          key +
          separator +
          reset +
          green +
          value.toString() +
          reset +
          comma +
          lineJump;
    }
  }
  str += closeChar;
  return str;
}
