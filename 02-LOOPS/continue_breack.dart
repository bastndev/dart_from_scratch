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

// --- --- Practice fail
/* void main() {
  String phrase = 'Hello my name is Bastian';
  int length = phrase.length;

  for (int i = 0; i < length; i++) {
    if (length >= 7 && length.toString() == 'Bastian') {
      print("Hi Bastian!");
      break;
    } else {
      print("Your name is not Bastian");
      break;
    }
  }
}
 */

/* void main() {
  String phrase = 'Hello my name is Lucas';
  int length = phrase.length;

  if (length >= 7 && phrase.substring(length - 7) == 'Bastian') {
    print("Hi Bastian!");
  } else {
    print("Your name is not Bastian");
  }
} */

// -- -- God
void main() {
  String phrase = 'Hello my name is Juan';
  List<String> targetWords = ['hello', 'my', 'name', 'Bastian'];

  List<String> words = phrase.split(' ');

  for (int i = 0; i < words.length; i++) {
    if (targetWords.contains(words[i].toLowerCase())) {
      print("${words[i]} found!");
    }
  }

  if (words.contains('Bastian')) {
    print("Bastian found!");
  } else {
    print("Bastian not found!");
  }
}
