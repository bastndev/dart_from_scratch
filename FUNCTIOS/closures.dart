/* void main() {
  final closure = (name) {
    print("Ny name is: $name ");
  };
  closure('Lucas');
}
 */

/* void main() {
  final closure = (String name) {
    print("Ny name is: $name ");
    return name.length;
  };
  closure('Lucas');
  print(closure);
}
 */

/* int getLength(String name) {
  print("Ny name is: $name ");
  return name.length;
}

void main() {
  final closure = (String name) {
    print("Ny name is: $name ");
    return name.length;
  };
  closure('Lucas');
  print(closure);
  print(getLength);

  final locura = getLength;
  locura('Locura');
} */

/* void main() {
  int getLength(String name) {
    print("Ny name is: $name");
    return name.length;
  }

  print(getLength('Lucas'));
}
 */

/* void main() {
  int getLength(String name) {
    print("Ny name is: $name");
    return name.length;
  }

  print(getLength('Bastian'));
}
 */

// --- -TODO: Increment
/* void main() {
  int age = 25;

  int getLength(String name) {
    print("Ny name is: $name I'am $age years old");
    age++;
    return name.length;
  }

  print(getLength('Bastian'));
  print(getLength('Bastian'));
  print(getLength('Bastian'));
}
 */

void main() {
  int age = 25;

/*   int getLength(String name, int age) {
    print("Ny name is: $name I'am $age years old");
    age++;
    return name.length;
  } */

  int getLength(String name) {
    // ignore: unused_local_variable
    int ageCopy = age;
    print("Ny name is: $name I'am $age years old");
    ageCopy++;
    return name.length;
  }

  print(getLength('Bastian'));
  print(getLength('Bastian'));
  print(getLength('Bastian'));
}