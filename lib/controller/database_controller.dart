import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;

  DatabaseHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    String path = join(await getDatabasesPath(), 'my_database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute("PRAGMA foreign_keys = ON;");

        await db.execute(
          "CREATE TABLE travel ("
          "id INTEGER PRIMARY KEY AUTOINCREMENT, "
          "tanggal_keberangkatan DATETIME, "
          "kuota INTEGER"
          ")",
        );

        await db.execute(
          "CREATE TABLE penumpang ("
          "id INTEGER PRIMARY KEY AUTOINCREMENT, "
          "id_travel INTEGER, "
          "kode_boking TEXT UNIQUE, "
          "name TEXT, "
          "jenis_kelamin TEXT, "
          "kota TEXT, "
          "usia INTEGER, "
          "created_at DATETIME DEFAULT CURRENT_TIMESTAMP, "
          "FOREIGN KEY (id_travel) REFERENCES travel(id) ON DELETE CASCADE ON UPDATE CASCADE"
          ")",
        );
      },
    );
  }
}
