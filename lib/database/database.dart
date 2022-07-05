


import 'package:loginnew/database/user_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();

    return await openDatabase(
      join(path, 'user.db'),
      onCreate: (database, version) async {
        await database.execute(
            "create table $tableName (id INTEGER primary key autoincrement,userName text,email text,number text,password text)");
      },
      version: 1,
    );
  }

  Future<int> createItem(User student) async {
    final Database db = await initializeDB();
    final id = await db.insert(tableName, student.toMap());
    return id;
  }
  Future<List<User>> getItems() async {
    final db = await initializeDB();
    final List<Map<String, Object?>> queryResult = await db.query(tableName);
    return queryResult.map((e) => User.fromObject(e)).toList();
  }
}
