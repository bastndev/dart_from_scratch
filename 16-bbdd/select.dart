import 'dart:convert';

import 'mysql_connection.dart';

void main() async {
  handleConnection((conn) async {
    // final result = await conn.execute('SELECT * FROM users');
    final result = await conn
        .execute('SELECT * FROM users where name = :name', {'name': 'test'});
    final rows = result.rows.toList();
    final data = rows.map((e) => User.fromMap(e.typedAssoc())).toList();
    print(data);
  });
}

class User {
  final int id;
  final String name;
  final int age;
  User({
    required this.id,
    required this.name,
    required this.age,
  });

  User copyWith({
    int? id,
    String? name,
    int? age,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'age': age,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      age: map['age']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() => 'User(id: $id, name: $name, age: $age)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.id == id &&
        other.name == name &&
        other.age == age;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ age.hashCode;
}
