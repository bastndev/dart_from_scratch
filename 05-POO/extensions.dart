extension WeekDay on DateTime {
  String getWeekday() {
    switch (weekday) {
      case 0:
        return 'Sunday';
      case 1:
        return 'Monday';
      case 2:
        return 'Tuesday';
      case 3:
        return 'Wednesday';
      case 4:
        return 'thursday';
      case 5:
        return 'Friday';
      default:
        return 'Saturday';
    }
  }
}

void main() {
  final date = DateTime.now();
  final weekday = date.getWeekday();
  print(weekday);
}
