//-TODO: Funciones: Se utilizan para organizar y reutilizar bloques de código que realizan tareas específicas sin necesidad de mantener un estado interno.

/* int subtraction(int a, int b) {
  return a - b;
}

void main() {
  final rest = (subtraction(4, 3));
  print(rest);

  final rest1 = (subtraction(4, 2));
  print(rest1);
}
 */

/* void greet(String name) {
  print('hello, $name');
}

void main() {
  greet('Juan');
} */

// -TODO: Clases: Se utilizan para modelar y encapsular conceptos más complejos mediante la combinación de datos y comportamientos relacionados. Son fundamentales en la programación orientada a objetos y facilitan la creación de estructuras más complejas y modulares en el código.

class Persona {
  String name;
  int edad;

  Persona(this.name, this.edad);

  void greet() {
    print('Hola, soy $name y tengo $edad años.');
  }
}

void main() {
  Persona persona1 = Persona('Ana', 25);

  print('Name: ${persona1.name}');
  print('Edad: ${persona1.edad}');
  persona1.greet();
}
