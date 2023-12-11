void main() {
  String say = 'Hello';
  print(reverseString(say));
}

String reverseString(String srt) {
  int length = srt.length;
  String reverse = '';
  for (int i = length - 1; i >= 0; i--) {
    final char = srt[i];
    reverse += char;
  }
  return reverse;
}
