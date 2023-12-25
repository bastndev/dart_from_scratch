import 'package:http/http.dart' as http;

void main() async { 
  
}

String getUrl(String keyboard, int page){
  return  'https://es.openfoodfacts.org/cgi/search.pl?action=process&search_terms=queso&sort_by=unique_scans_n&page_size=54&page=5';
}