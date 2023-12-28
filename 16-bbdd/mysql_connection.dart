import 'package:mysql_client/mysql_client.dart';

void main() async {
  final conn = await MySQLConnection.createConnection(
    host: "127.0.0.1",
    port: 3306,
    userName: "root",
    password: "root",
    databaseName: "test", 
  );

// actually connect to database
  await conn.connect();

  await conn.close();
}

//--- --- -Function  async
Future<void> handleConnection(Function(MySQLConnection) function) async {
  final conn = await MySQLConnection.createConnection(
    host: "127.0.0.1",
    port: 3306,
    userName: "root",
    password: "root",
    databaseName: "test",// optional
  );

// actually connect to database
  await conn.connect();
  await function(conn);
  await conn.close();
}
