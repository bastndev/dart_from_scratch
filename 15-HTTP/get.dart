import 'dart:convert';

import 'package:http/http.dart'
    as http; //as htp indica un espacio de nombre para la biblioteca http

/* void main() async {
  final url = Uri.parse('https://reqres.in/api/users/2');
  http.Response response = await http.get(url);

  print(response.body);
  print("Type response: ${response.body.runtimeType}");
}
 */

//mapearlo
/* void main() async {
  final url = Uri.parse('https://reqres.in/api/users/2');
  http.Response response = await http.get(url);

  //mapearlo
  final data = jsonDecode(response.body);
  print(data);
  print("Type response: ${data.runtimeType}");
} 
 */

//Email
void main() async {
  final url = Uri.parse('https://reqres.in/api/users/2');
  http.Response response = await http.get(url);

  //mapearlo
  final data = jsonDecode(response.body);
  print(data['data']['email']);
  print("Type response: ${data.runtimeType}");
}
