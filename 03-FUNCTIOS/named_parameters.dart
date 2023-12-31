void main() {
  String str = 'development of apps';
  String reverse = reverseString(maxReverseLength: 20,str: str);
  print(reverse);
}

reverseString({required String str, int maxReverseLength = 20}) {
  int length = str.length;
  String reverse = '';
  int count = 0;
  for (int i = length - 1; i >= 0; i--) {
    count++;
    final char = str[i];
    reverse += char;
    if (count == maxReverseLength) {
      return reverse;
    }
  }
  return reverse;
}
