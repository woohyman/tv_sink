import 'dart:async';

import 'package:json_string/json_string.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tv_sink/data/db/HistoryDbRepository.dart';
import 'package:tv_sink/data/model/transform.dart';
import '../../../domain/model/TvInfo.dart';
import 'DbParam.dart';

//自选数据库
abstract class AbstractDbRepository implements DbParam {
  Future<Database> get _database async {
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

  Future<void> insertAll(Map<String, TvInfo> data) async {
    for (var value in data.entries) {
      insertDog(value);
    }
  }

  Future<void> insertDog(MapEntry<String, TvInfo> dog) async {
    final db = await _database;
    await db.insert(
      tableName,
      dog.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<Map<String, TvInfo>> dogs() async {
    final db = await _database;
    final List<Map<String, dynamic>> dogMaps = await db.query(tableName);

    final result = <String, TvInfo>{};

    final map = runtimeType == HistoryDbRepository ? dogMaps.reversed : dogMaps;
    for (final item in map) {
      final tvgUrlList = JsonString(item['tvgUrlList'] as String)
          .decodeAsPrimitiveList<String>();
      result[item['name'] as String] = TvInfo(
        tvgUrlList,
        tvgId: item['tvgId'] as String,
        tvgCountry: item['tvgCountry'] as String,
        tvgLanguage: item['tvgLanguage'] as String,
        tvgLogo: item['tvgLogo'] as String,
        groupTitle: item['groupTitle'] as String,
      );
    }
    return result;
  }

  Future<void> updateDog(MapEntry<String, TvInfo> dog) async {
    final db = await _database;

    await db.update(
      tableName,
      dog.toMap(),
      where: 'id = ?',
    );
  }

  Future<void> deleteAll() async {
    final db = await _database;
    await db.delete(tableName);
  }

  Future<void> deleteDog(String name) async {
    final db = await _database;

    await db.delete(
      tableName,
      where: 'name = ?',
      whereArgs: [name],
    );
  }
}