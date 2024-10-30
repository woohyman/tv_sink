import 'package:get/get.dart';

import '../../data/db/CollectionDbRepository.dart';
import '../../data/db/OptionalDbRepository.dart';
import '../../data/net/RemoteUrlRepository.dart';
import '../model/TvInfo.dart';

sealed class PlayListDataProvider {
  final list = <String, TvInfo>{}.obs;

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
  factory OptionalPlayListDataProvider.fromGet() {
    return Get.find<OptionalPlayListDataProvider>();
  }

  OptionalPlayListDataProvider() {
    fetchData();
  }

  @override
  Future<void> fetchData() async {
    final value = await OptionalDbRepository().dogs();
    setWatchLists(value);
  }
}

class CollectPlayListDataProvider extends PlayListDataProvider {
  final _collectionDbControl = CollectionDbRepository();

  factory CollectPlayListDataProvider.fromGet() {
    return Get.find<CollectPlayListDataProvider>();
  }

  CollectPlayListDataProvider() {
    fetchData();
  }

  @override
  Future<void> fetchData() async {
    final value = await _collectionDbControl.dogs();
    setWatchLists(value);
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
      _collectionDbControl.insertDog(data);
    }
  }
}
