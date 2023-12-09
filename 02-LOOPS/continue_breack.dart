/* void main() { 
  String name = 'Lucas';

  print(name[3]);
} */

//--- --- -FIXME: Practice continue and break
void main() {
  String phrase = 'Hello my name is Bastian zombie';
  int length = phrase.length;
  String newString = '';

  for (int i = 0; i < length; i++) {
    final char = phrase[i];
    if (char == 'e' || char == 'z') {
      print("Salting the loop with $char...");
      continue;
    } else if (char == 'Bastian') {
      print("$char has been found!");
      break;
    } else {
      newString += char;
    }
  }
  print(newString);
}
