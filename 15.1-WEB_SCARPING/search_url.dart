import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:html/dom.dart';
import 'package:html/parser.dart';

void main() async {
  List<String> keywords = [
    'carne',
    'leche',
    'pescado',
    'atun',
    'tomate',
    'legunbres',
    'pollo',
    'queso'
  ];

  int page = 1;
  final url = getUrl(keywords.first, page);
  final response = await http.get(url.toUri());
  Document doc = parse(response.body);

  File('15.1-WEB_SCARPING/url_discover')
      .writeAsStringSync('$url\n', mode: FileMode.append);

  final ul = doc.getElementById('pages');
  final children = ul!.children;
  final element = children[children.length - 3];
  final pages = int.parse(element.text);
  ++page;
  for (int i = page; i <= pages; i++) {
    final url = getUrl(keywords.first, i);
    File('15.1-WEB_SCARPING/url_discover')
        .writeAsStringSync('$url\n', mode: FileMode.append);
  }
}

String getUrl(String keyboard, int page) {
  return 'https://es.openfoodfacts.org/cgi/search.pl?action=process&search_terms=$keyboard&sort_by=unique_scans_n&page_size=54&page=$page';
}

extension StringToUri on String {
  Uri toUri() => Uri.parse(this);
}
