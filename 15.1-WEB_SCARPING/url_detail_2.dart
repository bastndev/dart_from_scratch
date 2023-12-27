import 'dart:io';

import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

void main() async {
  final urls =
      File('15.1-WEB_SCARPING/url_disco').readAsLinesSync().sublist(0, 5);

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
        File('15.1-WEB_SCARPING/products2')
            .writeAsStringSync('$baseUrl$href\n', mode: FileMode.append);
      }
    }
  }

/*   final response =  await http.get(Uri.parse('https://es.openfoodfacts.org/cgi/search.pl?action=process&search_terms=carne&sort_by=unique_scans_n&page_size=54&page=1'));

  File('files/test.html').writeAsStringSync(response.body); */
}
