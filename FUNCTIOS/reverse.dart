/* void main() {
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
 */

void main() {
  String sentence = 'Hello, How are you ?';
  print(reverseWords(sentence));
}

String reverseWords(String sentence) {
  List<String> words = sentence.split(' ');
  String reversedSentence = '';

  for (int i = words.length - 1; i >= 0; i--) {
    reversedSentence += '${words[i]} ';
  }

  return reversedSentence.trim();
}
