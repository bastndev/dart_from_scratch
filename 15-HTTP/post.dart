import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  final url = Uri.parse('https://reqres.in/api/users');
  final body = {"name": "morpheus", "job": "leader"};
  final response = await http.post(url, body: jsonEncode(body));
  if (response.statusCode != 201) {
    print('Error! ${response.body}');
    return;
  }
  final data = jsonDecode(response.body);
  print(data);
}
