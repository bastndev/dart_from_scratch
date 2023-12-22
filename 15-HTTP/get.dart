import 'dart:convert';
import 'package:http/http.dart' as http;

// -FIXME: GETTING BETTER
void main() async {
  final url = Uri.parse('https://reqres.in/api/users/2');
  http.Response response = await http.get(url);

  //mapearlo
  final data = jsonDecode(response.body);
  final user = User.fromMap(data);

  print(user.email);
  print("Type response: ${user.runtimeType}");
}

// builder - Constructor
class User {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;

  User({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  //parcearlo (169. Parseando la respuesta del servidor)
  factory User.fromMap(Map<String, dynamic> data) {
    final map = data['data'];
    return User(
      id: map['id'],
      email: map['email'],
      firstName: map['first_name'],
      lastName: map['last_name'],
      avatar: map['avatar'],
    );
  }
}
