/* abstract class A{}

class B extends A{}
class C implements A{}

void main() { 
} */

//abstract inheritances
/* base class A {}

base class B extends A{}
final class C implements A{}
sealed class D extends A{}

void main() { 
  final a = A();
} */

//interface
/* interface class A {
  int a = 10;
}

class C implements A {
  @override
  int a = 10;
}

class B extends A {}

void main() {
  final a = A();
}
 */

// agree interface

/* abstract interface class A {
  String a();
  int b();
  bool c();

}

class B implements A {
  @override
  a() {
    // TODO: implement a
    throw UnimplementedError();
  }

  @override
  b() {
    // TODO: implement b
    throw UnimplementedError();
  }

  @override
  c() {
    // TODO: implement c
    throw UnimplementedError();
  }
}

class C extends A {
  @override
  a() {
    // TODO: implement a
    throw UnimplementedError();
  }

  @override
  b() {
    // TODO: implement b
    throw UnimplementedError();
  }

  @override
  c() {
    // TODO: implement c
    throw UnimplementedError();
  }
}

void main() {
}
 */

final class A {}

sealed class B implements A {}

base class C extends A {}

final class D extends A {}

void main() {
  // final a = A();
}
