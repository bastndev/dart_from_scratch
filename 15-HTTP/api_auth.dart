import 'package:http/http.dart' as http;

/* void main() async {
  final apiKey = 'fca_live_kfWL6teqkGFUgZTeRrr0fj1oEbMeGWnWoPSH8RWb';
  final url = Uri.parse('https://api.freecurrencyapi.com/v1/currencies?apikey=$apiKey&currencies=USD,EUR');
  final response = await http.get(url);

  print(response.statusCode);
  print(response.body);
} */

/* void main() async {
  final apiKey = 'fca_live_kfWL6teqkGFUgZTeRrr0fj1oEbMeGWnWoPSH8RWb';
  final url = Uri.parse(
      'https://api.freecurrencyapi.com/v1/currencies?apikey=$apiKey&currencies=USD,EUR');
  final headers = {
    'Authorization': 'token',
    'Content-Type': 'application/json'
  };
  final response = await http.get(url, headers: headers);

  print(response.statusCode);
  print(response.body);
}
 */

void main() async {
  final apiKey = 'fca_live_kfWL6teqkGFUgZTeRrr0fj1oEbMeGWnWoPSH8RWb';
  final url = Uri.parse(
      'https://api.freecurrencyapi.com/v1/currencies?apikey=&currencies=USD,EUR');
  final headers = {
    'Authorization': 'token',
    'Content-Type': 'application/json'
  };
  final response = await http.get(url, headers: headers);

  print(response.statusCode);
  print(response.body);
}
