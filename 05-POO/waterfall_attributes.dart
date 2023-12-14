class User {
  String name = '';
  String email = '';
  int age = 0;

  @override
  String toString() => 'name: $name, email: $email, age: $age';
}

void main() {
  final user = User();

  user
    ..name = 'Lucas'
    ..email = 'Lucas@example.com'
    ..age = 23;

  print(user);
}
