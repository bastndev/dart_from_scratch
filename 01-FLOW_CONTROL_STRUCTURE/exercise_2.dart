/* void main() {
  String data = 'e';

  if (data == 'a') {
    print("is Vocal");
  } else if (data == 'e') {
    print("is Vocal");
  } else if (data == 'i') {
    print("is Vocal");
  } else if (data == 'o') {
    print("is Vocal");
  } else if (data == 'u') {
    print("is Vocal");
  } else {
    print("Enter only 1 world. pls");
  }
}*/

void main() {
  String data = 'a';

  if (data == 'a' || data == 'e' || data == 'i' || data == 'o' || data == 'u') {
    print("is Vocal");
  } else if (data != 'a' ||
      data != 'e' ||
      data != 'i' ||
      data != 'o' ||
      data != 'u') {
    print("Is no vocal");
  } else {
    print("Enter only 1 world. pls");
  }
}
