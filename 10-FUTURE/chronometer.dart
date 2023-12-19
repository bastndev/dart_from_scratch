void main() async {
  int seconds = 0;

  while (seconds < 60) {
    await Future.delayed(const Duration(milliseconds: 900));
    seconds++;
    print(seconds);
  }
}

extension TimerExtension on int{

}
