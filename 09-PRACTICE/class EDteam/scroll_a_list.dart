/* void main() {
  final list = [];

  list.add("Ella baila sola");
  list.add("40 23");
  list.add("a un estas en mis sueños");
  list.add("Su calor");

  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
}
 */

/* void main() {
  final list = [];

  list.add("Ella baila sola");
  list.add("40 23");
  list.add("a un estas en mis sueños");
  list.add("Su calor");

  int i = 0;
  while (i < list.length) { //while use more loss // use more for 
    print(list[i]);
    i++;
  }
}
 */

/* void main() {
  final list = [];

  list.add("Ella baila sola");
  list.add("40 23");
  list.add("a un estas en mis sueños");
  list.add("Su calor");

  list.forEach((element) {
    print(element);
  });
}
 */

// -FIXME: only one element
/* void main() {
  final list = [];

  list.add("Ella baila sola");
  list.add("40 23");
  list.add("a un estas en mis sueños");
  list.add("Su calor");

  list.forEach((element)=> print(element));
} */

// --- --- -FIXME: Recommend for use

/* void main() {
  final list = [];

  list.add("Ella baila sola");
  list.add("40 23");
  list.add("a un estas en mis sueños");
  list.add("Su calor");

  for (var element in list) {
    print(element);
  }
}
 */

//--- --- -TODO: Practices

void main() {
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for (int number in numbers.toList()) {
    if (number % 2 != 0) {
      numbers.remove(number);
    }
  }

  print(numbers);
}
