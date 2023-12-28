import 'mysql_connection.dart';

void main() async {
  handleConnection((conn) async {
    await conn.execute('INSERT INTO users (name, age) VAlUES (:name, :age)',
        {'name': 'Gohit', 'age': 25});
  });
}
