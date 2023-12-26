import 'package:http/http.dart' as http;

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

  final response = await http.get(getUrl(keywords.first, page).toUri());
}

String getUrl(String keyboard, int page) {
  return 'https://es.openfoodfacts.org/cgi/search.pl?action=process&search_terms=$keyboard&sort_by=unique_scans_n&page_size=54&page=$page';
}

extension StringToUri on String {
  Uri toUri() => Uri.parse(this);
}
