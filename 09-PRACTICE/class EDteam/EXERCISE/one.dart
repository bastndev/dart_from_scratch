void main() {
  num elderly(num a, num b) {
    if (a > b) {
      return a;
    }
    return b;
  }

  final a = 1.90;
  final b = 120.2;
  final c = 30;
  final d = 40;

  final result1 = elderly(a, b);
  final result2 = elderly(c, d);
  final result3 = elderly(result1, result2);

  print("The largest number is: $result3");
}
