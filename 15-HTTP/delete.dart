import 'package:http/http.dart' as http;

void main() async {
  final url = Uri.parse('https://reqres.in/api/users/2');
  final response = await http.delete(url);
  if (response.statusCode != 204) {
    print('Error! ${response.body}');
    return;
  }

  print("User Delete: ");
}
