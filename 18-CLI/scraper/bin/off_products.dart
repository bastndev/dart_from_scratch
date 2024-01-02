import 'dart:io';

import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

void main() async {
  final detailsSearch = OpenFoodFactsDetail(
      '15.1-WEB_SCARPING/url_disco', '15.1-WEB_SCARPING/products2');
  detailsSearch.getDetailsUrl();
}

class OpenFoodFactsDetail {
  final String baseUrl = 'https://es.openfoodfacts.org';
  final String readPath;
  final String savePath;

  OpenFoodFactsDetail(this.readPath, this.savePath);

  Future<void> getDetailsUrl() async {
    final urls = File(readPath).readAsLinesSync().sublist(0, 5);

    for (final url in urls) {
      print('search products in: $url');
      final uri = Uri.parse(url);
      final response = await http.get(uri);
      final doc = parse(response.body);

      final links = doc.getElementsByTagName('a');
      int count = 0;
      for (final a in links) {
        final attrs = a.attributes;
        final href = attrs['href'];

        if (attrs.containsKey('href') && href!.startsWith('/producto/')) {
          ++count;
          File(savePath)
              .writeAsStringSync('$baseUrl$href\n', mode: FileMode.append);
        }
      }
      print('Products found $count');
    }
  }
}
