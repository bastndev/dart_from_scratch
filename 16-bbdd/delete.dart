import 'mysql_connection.dart';

void main() async {
  handleConnection((conn) async {
    await conn
        .execute('DELETE FROM users where id = 1 ');
    final result = await conn.execute('SELECT * FROM users ');
    final rows = result.rows.toList();
    final data = rows.map((e) => e.typedAssoc()).toList();
    print(data);
  });
}
