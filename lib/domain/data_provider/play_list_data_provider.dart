import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tv_sink/data/db/channel_type_enum.dart';
import 'package:tv_sink/data/db/tv_channels_repository.dart';
import 'package:tv_sink/domain/model/transform.dart';
import '../../data/net/supabase/remote_url_repository.dart';
import '../model/tv_channel_info_model.dart';

abstract class PlayListDataProvider {
  final list = RxMap<String, TvChannelInfoModel>();

  @mustCallSuper
  setWatchLists(Map<String, TvChannelInfoModel> watchLists) {
    list.clear();
    list.addAll(watchLists);
  }

  MapEntry<String, TvChannelInfoModel> getItemByIndex(int index) {
    return list.entries.elementAt(index);
  }

  Future<Map<String, TvChannelInfoModel>> fetchData();
}

class FeaturePlayListDataProvider extends PlayListDataProvider {
  final _remoteUrlControl = RemoteUrlRepository();

  @override
  Future<Map<String, TvChannelInfoModel>> fetchData() async {
    final value = await _remoteUrlControl.fetchDefaultUrlList();
    setWatchLists(value.toMap());
    return value.toMap();
  }
}

class OptionalPlayListDataProvider extends PlayListDataProvider {
  final _customChannelsRepository =
      TvChannelsRepository.fromType(ChannelType.customChannel);

  factory OptionalPlayListDataProvider.fromGet() {
    return Get.find<OptionalPlayListDataProvider>();
  }

  OptionalPlayListDataProvider() {
    fetchData();
  }

  @override
  Future<Map<String, TvChannelInfoModel>> fetchData() async {
    final value = await _customChannelsRepository.query();
    setWatchLists(value.toMap());
    return value.toMap();
  }

  @override
  void setWatchLists(Map<String, TvChannelInfoModel> watchLists) {
    super.setWatchLists(watchLists);
    final _optionalDbRepository =
        TvChannelsRepository.fromType(ChannelType.customChannel);
    _optionalDbRepository.deleteAll();
    _optionalDbRepository.insertAll(watchLists.toList());
  }
}

class CollectPlayListDataProvider extends PlayListDataProvider {
  final _collectionDbControl =
      TvChannelsRepository.fromType(ChannelType.collectChannel);

  factory CollectPlayListDataProvider.fromGet() {
    return Get.find<CollectPlayListDataProvider>();
  }

  CollectPlayListDataProvider() {
    fetchData();
  }

  @override
  Future<Map<String, TvChannelInfoModel>> fetchData() async {
    final value = await _collectionDbControl.query();
    setWatchLists(value.toMap());
    return value.toMap();
  }

  @override
  void setWatchLists(Map<String, TvChannelInfoModel> watchLists) {
    super.setWatchLists(watchLists);
    final _collectionDbRepository =
        TvChannelsRepository.fromType(ChannelType.collectChannel);
    _collectionDbRepository.deleteAll();
    _collectionDbRepository.insertAll(watchLists.toList());
  }

  void selectOrNot(MapEntry<String, TvChannelInfoModel>? data) {
    if (data == null) {
      return;
    }
    if (list.keys.contains(data.key)) {
      list.remove(data.key);
      _collectionDbControl.deleteDog(data.key);
    } else {
      list[data.key] = data.value;
      _collectionDbControl.insert(data.toInfo());
    }
  }
}
