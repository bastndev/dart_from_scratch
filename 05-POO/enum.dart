/* enum WeekDay {
  monday,
  tuesdays,
  wednesdays,
  thursday,
  friday,
  saturday,
  sunday;
}

void main() {
  final week = WeekDay.monday;
  print(week);
  print(week.name);
} */

// improved enums

enum WeekDay {
  monday(1),
  tuesdays(2),
  wednesdays(3),
  thursday(4),
  friday(5),
  saturday(6),
  sunday(0);

  final int day;
  const WeekDay(this.day);
}

void main() {
  final week = WeekDay.monday;
  print(week);
  print(week.name);
  print(week.day);
}
