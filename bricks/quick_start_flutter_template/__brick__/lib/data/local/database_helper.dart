import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

// We are using SQLite to store data locally in a structured way.
// Below is the demo code for a helper class that uses SQLite.

// // Insert
// await SQLiteHelper.insertTodo({'title': 'Buy groceries', 'isDone': 0});

// // Fetch
// final todos = await SQLiteHelper.getAllTodos();

// // Update
// await SQLiteHelper.updateTodo(1, {'title': 'Updated Task', 'isDone': 1});

// // Delete
// await SQLiteHelper.deleteTodo(1);

class SQLiteHelper {
  static Database? _db;

  static Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDatabase();
    return _db!;
  }

  static Future<Database> _initDatabase() async {
    final path = join(await getDatabasesPath(), 'app_data.db');
    return await openDatabase(path, version: 1, onCreate: _createTables);
  }

  static Future<void> _createTables(Database db, int version) async {
    await db.execute('''
      CREATE TABLE todos (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT,
        isDone INTEGER
      )
    ''');
  }

  // Insert
  static Future<int> insertTodo(Map<String, dynamic> data) async {
    final db = await database;
    return await db.insert('todos', data);
  }

  // Read
  static Future<List<Map<String, dynamic>>> getAllTodos() async {
    final db = await database;
    return await db.query('todos');
  }

  // Update
  static Future<int> updateTodo(int id, Map<String, dynamic> data) async {
    final db = await database;
    return await db.update('todos', data, where: 'id = ?', whereArgs: [id]);
  }

  // Delete
  static Future<int> deleteTodo(int id) async {
    final db = await database;
    return await db.delete('todos', where: 'id = ?', whereArgs: [id]);
  }
}
