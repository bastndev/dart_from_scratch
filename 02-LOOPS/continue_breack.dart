/* void main() { 
  String name = 'Lucas';

  print(name[3]);
} */

//--- --- -FIXME: Practice continue and break
/* void main() {
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
 */

/* void main() {
  String phrase = 'Hello my name is Bastian zombie';
  int length = phrase.length;
  String newString = '';
  bool foundBastian = false;

  for (int i = 0; i < length; i++) {
    final char = phrase[i];

    if (char == 'e' || char == 'z') {
      print("Salting the loop with $char...");
      continue;
    } else if (char == 'B') {
      if (i + 7 < length && phrase.substring(i, i + 7) == 'Bastian') {
        foundBastian = true;
        print("Bastian has been found!");
        break;
      }
    }

    newString += char;
  }

  if (!foundBastian) {
    print("Bastian not found in the phrase.");
  }

  print(newString);
} */
