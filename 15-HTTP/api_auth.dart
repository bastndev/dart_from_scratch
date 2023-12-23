import 'package:http/http.dart' as http;

void main() async {
  final apiKey = 'fca_live_kfWL6teqkGFUgZTeRrr0fj1oEbMeGWnWoPSH8RWb';
  final url = Uri.parse('https://api.freecurrencyapi.com/v1/currencies?apikey=$apiKey');
  final response = await http.get(url);

  print(response.statusCode);
  print(response.body);
}
