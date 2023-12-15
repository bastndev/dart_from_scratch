/* class Event {}

class Generic<T extends Event>{}

class A extends Event{
  int a = 10;
}
class B extends Event{}

void main() { 
  // final generic = Generic<A>();
} */

// --- --- --- -Practice

class Sum {
  final String name;
  final int age;

  Sum({required this.name, required this.age});
}

void main() {
  final sum = Sum(age: 12, name: 'Bastian');
  print("Hello my name is ${sum.name} ");
}
