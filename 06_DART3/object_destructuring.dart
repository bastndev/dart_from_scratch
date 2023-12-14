//--- --- -TODO: Map destructuring
class User {
  int id = DateTime.now().millisecondsSinceEpoch;
  String email;
  // String name; // refer to attributes by na,e
  User(this.email);
}

void main() { 
  final user = User('example@gmail.com');

  var User(:id, :email)= user;
  print('$id have the email: $email');
}
