import 'mysql_connection.dart';

void main() async {
  handleConnection((conn) async {
    final result = await conn.execute('SELECT * FROM users');
    final rows = result.rows.toList();
    final data = rows.map((e) => e.typedAssoc()).toList();
    print(data);
  });
}
