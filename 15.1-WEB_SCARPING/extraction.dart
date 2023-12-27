import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

void main() async {
  final response = await http.get(Uri.parse(
      'https://es.openfoodfacts.org/producto/8421384012014/jamon-serrano-incarlopsa'));

  final doc = parse(response.body);
  final h2s = doc.getElementsByTagName('h2');
  String productName = '';

  final product = NutritionalInfoProduct();

  for (final h2 in h2s) {
    if (h2.attributes.containsValue('food:name')) {
      productName = h2.text;
      break;
    }
  }
  print("Product: $productName");

  //Id: code
  final barCodeElement = doc.getElementById('barcode');
  String barcode = barCodeElement?.text ?? '';
  print("Barcode: $barcode");

  //..Css operator, | cascade operator 

  print('');

  //barcode Nutrition
  final tbody = doc.getElementsByTagName('tbody').first;
  final str = tbody.children;

  for (final tr in str) {
    final tds = tr.children;
    final title = tds.first.text.trim();
    final value = tds[1].text.trim();
    print('$title: $value');
  }
}

class NutritionalInfoProduct {
  String? name;
  String? barcode;
  String? energy;
  String? fast;
  String? saturateFast;
  String? carbohydrates;
  String? sugars;
  String? fiber;
  String? proteins;
  String? salt;

  @override
  String toString() {
    return 'NutritionalInfoProduct(name: $name, barcode: $barcode, energy: $energy, fast: $fast, saturateFast: $saturateFast, carbohydrates: $carbohydrates, sugars: $sugars, fiber: $fiber, proteins: $proteins, salt: $salt)';
  }
}
