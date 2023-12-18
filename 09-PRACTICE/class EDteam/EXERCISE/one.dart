void main() {
  num elderly(num a, num b) {
    if (a > b) {
      return a;
    }
    return b;
  }

  final a = 110;
  final b = 20;
  final c = 30;
  final d = 430;
  final e = 50;

  final result1 = elderly(a, b);
  final result2 = elderly(c, result1);
  final result3 = elderly(d, result2);
  final result4 = elderly(d, result3);
  final result5 = elderly(e, result4);
  print("The number most is: $result5");
}









/* void main() {
  num elderly(num a, num b) {
    if (a > b) {
      return a;
    }
    return b;
  }

  final a = 90;
  final b = 12;
  final c = 310;
  final d = 40;

  final result1 = elderly(a, b);
  final result2 = elderly(c, d);
  final result3 = elderly(result1, result2);

  print("The largest number is: $result3");
} */
