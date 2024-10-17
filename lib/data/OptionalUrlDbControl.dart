import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../domain/model/TvUrlList.dart';

class OptionalUrlDbControl {
  Future<Database> get _database async {
    return await openDatabase(
      join(await getDatabasesPath(), 'tv_list_1.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE dogsUrl(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, tvgId TEXT, tvgCountry TEXT, tvgLanguage TEXT, tvgLogo TEXT, groupTitle TEXT, tvgUrl TEXT)',
        );
      },
      version: 1,
    );
  }

  Future<void> insertDog(TvUrlList dog) async {
    final db = await _database;

    await db.insert(
      'dogsUrl',
      dog.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<TvUrlList>> dogs() async {
    final db = await _database;

    final List<Map<String, Object?>> dogMaps = await db.query('dogsUrl');

    final result = <TvUrlList>[];
    for (final item in dogMaps) {
      result.add(TvUrlList(
        name: item['name'] as String,
        tvgId: item['tvgId'] as String,
        tvgCountry: item['tvgCountry'] as String,
        tvgLanguage: item['tvgLanguage'] as String,
        tvgLogo: item['tvgLogo'] as String,
        groupTitle: item['groupTitle'] as String,
        tvgUrl: item['tvgUrl'] as String,
      ));
    }
    return result;
  }

  Future<void> updateDog(TvUrlList dog) async {
    final db = await _database;

    await db.update(
      'dogsUrl',
      dog.toMap(),
      where: 'id = ?',
    );
  }

  Future<void> deleteAll() async {
    final db = await _database;
    await db.delete('dogsUrl');
  }

  Future<void> deleteDog(int id) async {
    final db = await _database;

    await db.delete(
      'dogsUrl',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
