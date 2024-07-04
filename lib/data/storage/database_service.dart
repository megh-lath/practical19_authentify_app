import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart';
import 'package:practical19/data/model/user_details.dart';
import 'package:sqflite/sqflite.dart';

final databaseServiceProvider = Provider(
  (ref) => DatabaseService(),
);

class DatabaseService {
  static final DatabaseService _databaseService = DatabaseService._internal();

  factory DatabaseService() {
    return _databaseService;
  }

  DatabaseService._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, 'user_database.db');
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('CREATE TABLE users(id INTEGER PRIMARY KEY, '
        'firstName TEXT, '
        'lastName TEXT, '
        'email TEXT, '
        'password TEXT)');
  }

  Future<void> insertUser(Map<String, dynamic> user) async {
    final db = await database;
    await db.insert('users', user,
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<UserDetails> getUser(int id) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'users',
      where: 'id = ?',
      whereArgs: [id],
    );
    return UserDetails.fromJson(maps.first);
  }

  Future<UserDetails> getUserDetailsByEmailId(String email) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'users',
      where: 'email = ?',
      whereArgs: [email],
    );
    return UserDetails.fromJson(maps.first);
  }

  Future<void> deleteUser(int id) async {
    final db = await database;
    await db.delete(
      'users',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<bool> isAnyUserRegistered() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('users');
    return maps.isNotEmpty;
  }

  Future<bool> isUserAuthorized(String email, String password) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'users',
      where: 'email = ? AND password = ?',
      whereArgs: [email, password],
    );
    return maps.isNotEmpty;
  }
}
