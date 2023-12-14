abstract class Person {
  String id;
  String name;
  int age;

  Person(this.id, this.name, this.age);

  @override
  String toString() {
    return 'Person(id: $id, name: $name, age: $age)';
  }
}

class Student extends Person {
  List<String> subjects = [];
  bool repeater;
  Student(super.id, super.name, super.age, {this.repeater = false});

  @override
  String toString() {
    return '${super.toString()} repeater: $repeater, subject: $subjects';
  }
}
