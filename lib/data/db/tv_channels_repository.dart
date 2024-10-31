import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:tv_sink/data/model/transform.dart';
import '../../domain/model/tv_info.dart';
import '../model/tv_info_with_name.dart';
import 'base/base_channels_repository.dart';
import 'channel_type_enum.dart';

class TvChannelsRepository extends BaseChannelsRepository {
  factory TvChannelsRepository.fromType(ChannelType channelType) {
    return TvChannelsRepository._(channelType);
  }

  TvChannelsRepository._(ChannelType channelType) {
    dbName = channelType.dbName;
    tableName = channelType.tableName;
    dbVersion = channelType.dbVersion;
  }

  Future<void> insertAll(Map<String, TvInfo> data) async {
    for (var value in data.entries) {
      insert(value);
    }
  }

  Future<void> insert(MapEntry<String, TvInfo> dog) async {
    final _database = await database;
    await _database.insert(
      tableName,
      dog.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<Map<String, TvInfo>> query() async {
    final _database = await database;
    final List<Map<String, dynamic>> dogMaps = await _database.query(tableName);

    final result = <String, TvInfo>{};

    final map = tableName == ChannelType.historyChannel.tableName
        ? dogMaps.reversed
        : dogMaps;
    for (final item in map) {
      final tvInfoWithName = TvInfoWithName.fromJson(item);
      result[tvInfoWithName.name] = tvInfoWithName.toTvInfo();
    }
    return result;
  }

  Future<void> update(MapEntry<String, TvInfo> entry) async {
    final _database = await database;
    await _database.update(
      tableName,
      entry.toMap(),
      where: 'id = ?',
    );
  }

  Future<void> deleteAll() async {
    final _database = await database;
    await _database.delete(tableName);
  }

  Future<void> deleteDog(String name) async {
    final _database = await database;
    await _database.delete(
      tableName,
      where: 'name = ?',
      whereArgs: [name],
    );
  }
}
