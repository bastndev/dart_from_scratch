//--- --- -TODO: CODE NO asincrono
void main() {
  List<num> numbers = [];

  Future.value(1).then((value) {
    numbers.add(value);
    Future.delayed(const Duration(milliseconds: 1000), () {
      return 5;
    }).then((value) {
      numbers.add(value);
      Future.value(3).then((value) {
        numbers.add(value);
        Future.microtask(() {
          numbers.add(1);
          print(sum(numbers));
        });
      });
    });
  });
}

num sum(List<num> numbers) {
  num count = 0;
  for (final n in numbers) {
    count += n;
  }
  return count;
}
