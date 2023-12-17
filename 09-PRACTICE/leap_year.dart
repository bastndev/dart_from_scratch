/* void main() { 
  final year = 2024;
  final leap = 4;
  bool isLeap = year % leap == 0;

  if(isLeap) {
    print("leap year");
  }else{
    print("No leap year");
  }
} */

void main() {
  final year = 2024;
  final leapPeriodicity = 4;

  bool isLeapYear = year % leapPeriodicity == 0;

  if (isLeapYear) {
    print("$year is leap.");
  } else {
    print("$year i Not leap.");
  }
}
