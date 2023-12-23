import 'dart:io';

import 'package:http/http.dart' as http;

/* void main() async {
  final url = Uri.parse('https://google.es');
  final response = await http.get(url);
  print(response.headers);
  print(response.body);  
}
 */

/* void main() async {
  final url = Uri.parse('https://images.dog.ceo/breeds/mountain-bernese/n02107683_3488.jpg');
  final response = await http.get(url);
  print(response.headers);
}
 */

void main() async {
  final url = Uri.parse(
      'https://images.dog.ceo/breeds/hound-blood/n02088466_7195.jpg');
  final response = await http.get(url);
  // print(response.bodyBytes);

  final file = File('files/dog_img2.jpg');
  file.writeAsBytes(response.bodyBytes);
}
