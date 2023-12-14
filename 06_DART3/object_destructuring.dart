//--- --- -TODO: Map destructuring
class User {
  int id = DateTime.now().millisecondsSinceEpoch;
  String email;
  User(this.email);
}

void main() { 
  final user = User('example@gmail.com');

  var User(:id, :email)= user;
  print('$id have the email: $email');
}
