//--- --- -TODO: Loop destructuring
class User {
  int id = DateTime.now().millisecondsSinceEpoch;
  String email;
  User(this.email);
}

void main() { 
  final users ={
    User('e1'),
    User('e2'),
    User('e3'),
    User('e4'),
    User('e5'),
    User('e6'),
  };

  for(var User(:email) in users) {
    print(email);
  }
}
