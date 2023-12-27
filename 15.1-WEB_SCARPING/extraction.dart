import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

void main() async {
  final response = await http.get(Uri.parse(
      'https://es.openfoodfacts.org/producto/8421384012014/jamon-serrano-incarlopsa'));

  final doc = parse(response.body);
  final h2s = doc.getElementsByTagName('h2');
  String productName = '';

  for (final h2 in h2s) {
    if (h2.attributes.containsValue('food:name')) {
      productName = h2.text;
      break;
    }
  }
  print("Product: $productName");

  final barCodeElement = doc.getElementById('barcode');
  String barcode = barCodeElement?.text ?? '';

  print("Barcode: $barcode");
}
