import 'package:http/http.dart' as http;

void main() async {
  final url = Uri.parse('https://google.es');
  final response = await http.get(url);
  print(response.headers);
  print(response.body);  
}
