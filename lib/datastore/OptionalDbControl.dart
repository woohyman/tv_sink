import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../domain/model/TvList.dart';

class OptionalDbControl {
  late Database database;

  Future<void> initDatabase() async {
    database = await openDatabase(
      join(await getDatabasesPath(), 'tv_list.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, url TEXT)',
        );
      },
      version: 2,
    );
  }

  Future<void> insertDog(TvList dog) async {
    final db = await database;

    await db.insert(
      'dogs',
      dog.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<TvList>> dogs() async {
    final db = await database;

    final List<Map<String, Object?>> dogMaps = await db.query('dogs');

    final result = <TvList>[];
    for (final item in dogMaps) {
      result.add(TvList(
          id: item['id'] as int,
          name: item['name'] as String,
          url: item['url'] as String));
    }
    return result;
  }

  Future<void> updateDog(TvList dog) async {
    final db = await database;

    await db.update(
      'dogs',
      dog.toMap(),
      where: 'id = ?',
      whereArgs: [dog.id],
    );
  }

  Future<void> deleteDog(int id) async {
    final db = await database;

    await db.delete(
      'dogs',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}