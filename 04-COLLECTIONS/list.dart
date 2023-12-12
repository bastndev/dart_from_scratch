/* void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7];

  print(numbers);
}
 */

/* void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7];

  print(numbers[6]);
}
 */

/* void main() {
  List<double> numbers = [1.0, 2.0, 3.0, 4];

  print(numbers);
}
 */

/* void main() {
  List<String> vocals = ['a', 'e', 'i', 'o', 'u'];

  print(vocals[3]);
}
 */

void main() { 
  List<dynamic> all = ['a', 2, null, (){
    print("Hello");
  }];

  print(all);
}
