void main() async {
  await for (int i in oneNumberEverySecond()) {
    print(i);
  }
}
// async*
// yield

Stream<int> oneNumberEverySecond() async* {
  for (int i = 0; i < 5; i++) {
    await Future.delayed(const Duration(milliseconds: 1000));
    yield i;
  }
}
