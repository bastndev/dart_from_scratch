import 'dart:io';

import 'package:http/http.dart' as http;

void main() async { 
  final urls = File('15.1-WEB_SCARPING/url_disco').readAsLinesSync().sublist(0,5);
  final response =  await http.get(Uri.parse('https://es.openfoodfacts.org/cgi/search.pl?action=process&search_terms=carne&sort_by=unique_scans_n&page_size=54&page=1'));

  File('files/test.html').writeAsStringSync(response.body);
}