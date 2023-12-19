void main() async {
  int seconds = 0;

  while (seconds < 60) {
    await Future.delayed(const Duration(milliseconds: 900));
    seconds++;
    print(seconds.toTimer());
  }
}

extension TimerExtension on int {
  String toTimer() {
    int hours = (this ~/ 3600).toInt();
    String hoursString = hours < 10 ? '0$hours' : '$hours';

    int remainingSeconds = this % 3600;
    int minutes = (remainingSeconds ~/ 60).toInt();
    String minutesString = minutes < 10 ? '0$minutes' : '$minutes';

    remainingSeconds = remainingSeconds % 60;
    String secondsString =
        remainingSeconds < 10 ? '0$remainingSeconds' : '$remainingSeconds';

    return '$hoursString:$minutesString:$secondsString';
  }
}
