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

int getLength(String name) {
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
}
