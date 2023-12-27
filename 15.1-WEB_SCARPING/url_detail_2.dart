import 'dart:io';

import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

void main() async {
  
}

class OpenFoodFactsDetail {
  final String baseUrl = 'https://es.openfoodfacts.com';
  final String readPath;
  final String savePath;

  OpenFoodFactsDetail(this.readPath, this.savePath);

  Future<void> getDetailsUrl() async {
    final urls = File(readPath).readAsLinesSync().sublist(0, 5);

    final baseUrl = 'https://es.openfoodfacts.com';
    for (final url in urls) {
      final uri = Uri.parse(url);
      final response = await http.get(uri);
      final doc = parse(response.body);

      final links = doc.getElementsByTagName('a');
      for (final a in links) {
        final attrs = a.attributes;
        final href = attrs['href'];

        if (attrs.containsKey('href') && href!.startsWith('/producto/')) {
          File(savePath)
              .writeAsStringSync('$baseUrl$href\n', mode: FileMode.append);
        }
      }
    }
  }
}
