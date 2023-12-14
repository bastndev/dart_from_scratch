abstract class Person {
  String id;
  String name;
  int age;

  Person(this.id, this.name, this.age);

  hello() {}
  @override
  String toString() {
    return 'Person(id: $id, name: $name, age: $age)';
  }
}

// inheritances
class Student extends Person {
  List<String> subjects = [];
  bool repeater;
  Student(super.id, super.name, super.age, {this.repeater = false});

  @override
  hello() {
    return super.hello();
  }
  @override
  String toString() {
    return '${super.toString()} repeater: $repeater, subject: $subjects';
  }
}

// si un clase padre tiene atributos hay que agrgalo tambien en us herenias
//Implementation

class Director implements Person {
  @override
  int age;

  @override
  String id;

  @override
  String name;

  Director(this.age, this.id, this.name);
  
  @override
  hello() {
    throw UnimplementedError();
  }
}
