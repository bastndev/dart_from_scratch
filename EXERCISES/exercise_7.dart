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
  makeMapPrettier(data);
}

String makeMapPrettier(Map<String, dynamic> map) {
  final lineJump = '\n';
  final openChar = '{$lineJump';
  final closeChar = '$lineJump}';
  final comma = ',';
  final separator = ':';
  final keys = map.keys;

  String str = openChar;
  for (final key in keys) {
    final value = map[key];
    if (value is Map) {
    } else {
      str += key + separator + value.toString() + comma + lineJump;
    }
  }
  str += closeChar;
  print(str);
  return str;
}
