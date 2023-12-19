//--- --- -TODO: CODE sincrono
void main() async {
  List<num> numbers = [];

  final value1 = await Future.value(1);
  numbers.add(value1);

  final value2 = await Future.delayed(const Duration(milliseconds: 1000), () {
    return 5;
  });
  numbers.add(value2);

  final value3 = await Future.value(3);
  numbers.add(value3);

  final value4 = await Future.microtask(() {
    return 1;
  });
  numbers.add(value4);
  print(sum(numbers));
}

num sum(List<num> numbers) {
  num count = 0;
  for (final n in numbers) {
    count += n;
  }
  return count;
}
