import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

abstract class BaseChannelsRepository {
  late String dbName;
  late String tableName;
  late int dbVersion;
  Database? _database;

  Future<Database> fetchDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), dbName),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE $tableName(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, tvgId TEXT, tvgCountry TEXT, tvgLanguage TEXT, tvgLogo TEXT, groupTitle TEXT, tvgUrl TEXT, tvgUrlList JSON)',
        );
      },
      version: dbVersion,
    );
  }

  Future<Database> get database async {
    _database ??= await fetchDatabase();
    return _database!;
  }
}
