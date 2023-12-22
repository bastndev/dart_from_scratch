import 'dart:convert';
import 'package:http/http.dart' as http;

// -FIXME: GETTING BETTER
void main() async {
  final url = Uri.parse('https://reqres.in/api/users/2');
  http.Response response = await http.get(url);

  final user = userFromJson(response.body);

  print(user.data.email);
  print("Type response: ${user.runtimeType}");
}

// builder - Constructor
class User {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;

}
