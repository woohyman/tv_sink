import 'dart:async';
import 'package:sqflite/sqflite.dart';
import '../model/tv_channel_info.dart';
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

  Future<void> insertAll(List<TvChannelInfo> list) async {
    for (var value in list) {
      insert(value);
    }
  }

  Future<void> insert(TvChannelInfo info) async {
    final _database = await database;
    await _database.insert(
      tableName,
      info.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<TvChannelInfo>> query() async {
    final _database = await database;
    final List<Map<String, dynamic>> dogMaps = await _database.query(tableName);

    final result = <TvChannelInfo>[];

    for (final item in dogMaps) {
      final tvChannelInfo = TvChannelInfo.fromJson(item);
      result.add(tvChannelInfo);
    }
    return result;
  }

  Future<void> update(TvChannelInfo info) async {
    final _database = await database;
    await _database.update(
      tableName,
      info.toJson(),
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
