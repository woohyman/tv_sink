import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tv_sink/data/db/channel_type_enum.dart';
import 'package:tv_sink/data/db/tv_channels_repository.dart';
import '../../data/net/remote_url_repository.dart';
import '../model/tv_info.dart';

abstract class PlayListDataProvider {
  final list = <String, TvInfo>{}.obs;

  @mustCallSuper
  void setWatchLists(Map<String, TvInfo> watchLists) {
    //再往列表填充数据
    list.clear();
    list.addAll(watchLists);
  }

  MapEntry<String, TvInfo> getItemByIndex(int index) {
    return list.entries.elementAt(index);
  }

  void fetchData();
}

class FeaturePlayListDataProvider extends PlayListDataProvider {
  final _remoteUrlControl = RemoteUrlRepository();

  @override
  Future<void> fetchData() async {
    final value = await _remoteUrlControl.fetchDefaultUrlList();
    setWatchLists(value);
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
  Future<void> fetchData() async {
    final value = await _customChannelsRepository.query();
    setWatchLists(value);
  }

  @override
  void setWatchLists(Map<String, TvInfo> watchLists) {
    super.setWatchLists(watchLists);
    final _optionalDbRepository =
        TvChannelsRepository.fromType(ChannelType.customChannel);
    _optionalDbRepository.deleteAll();
    _optionalDbRepository.insertAll(watchLists);
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
  Future<void> fetchData() async {
    final value = await _collectionDbControl.query();
    setWatchLists(value);
  }

  @override
  void setWatchLists(Map<String, TvInfo> watchLists) {
    super.setWatchLists(watchLists);
    final _collectionDbRepository =
        TvChannelsRepository.fromType(ChannelType.collectChannel);
    _collectionDbRepository.deleteAll();
    _collectionDbRepository.insertAll(watchLists);
  }

  void selectOrNot(MapEntry<String, TvInfo>? data) {
    if (data == null) {
      return;
    }
    if (list.keys.contains(data.key)) {
      list.remove(data.key);
      _collectionDbControl.deleteDog(data.key);
    } else {
      list[data.key] = data.value;
      _collectionDbControl.insert(data);
    }
  }
}
