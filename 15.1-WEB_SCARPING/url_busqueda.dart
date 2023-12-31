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
    'legumbres', // Fixed typo in 'legumbres'
    'pollo',
    'queso'
  ];

  final urlSearch = OpenFoodFactsUrl('15.1-WEB_SCARPING/url_disco');
  for (final keyword in keywords) {
    urlSearch.search(keyword); //parallel
    // await urlSearch.search(keyword); // async
  }
}

extension StringToUri on String {
  Uri toUri() => Uri.parse(this);
}

class OpenFoodFactsUrl {
  final String searchUrl =
      'https://es.openfoodfacts.org/cgi/search.pl?action=process&search_terms={keyword}&sort_by=unique_scans_n&page_size=54&page={page}';
  final String savePath;

  const OpenFoodFactsUrl(this.savePath);

  Future<void> search(String keyword) async {
    print('Start the search of $keyword');
    final url = getUrl(keyword, 1);
    final response = await http.get(url.toUri());
    Document doc = parse(response.body);

    write(url);

    final ul = doc.getElementById('pages');
    final children = ul!.children;
    final element = children[children.length - 3];
    final pages = int.parse(element.text);
    print('searching pages of $keyword');

    for (int i = 2; i <= pages; i++) {
      final url = getUrl(keyword, i);
      write(url);
    }
  }

  void write(String url) {
    File(savePath).writeAsStringSync('$url\n',
        mode: FileMode.append); // Fixed placement of FileMode.append
  }

  String getUrl(String keyword, int page) {
    return searchUrl
        .replaceAll('{keyword}', keyword) // Fixed typo in variable name
        .replaceAll('{page}', '$page');
  }
}
