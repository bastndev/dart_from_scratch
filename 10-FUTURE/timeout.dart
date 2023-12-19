void main() {
  const timeout = Duration(milliseconds: 750);
  const wait = Duration(seconds: 1);

  try {
    Future.delayed(wait, () {
      print("I will never run");
    }).then((value) {}).timeout(timeout);
  } catch (_) {}
}
