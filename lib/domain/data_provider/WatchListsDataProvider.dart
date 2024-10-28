import 'package:get/get.dart';

import '../../data/db/CollectionDbRepository.dart';
import '../model/RemoteListUrl.dart';
import '../model/TvInfo.dart';

class FeatureListsDataProvider {
  final list = <String, TvInfo>{}.obs;

  void setWatchLists(Map<String, TvInfo> watchLists) {
    list.clear();
    list.addAll(watchLists);
  }

  MapEntry<String, TvInfo> getItemByIndex(int index) {
    final item = list.entries.elementAt(index);
    return item;
  }
}

class WatchListsDataProvider {
  final list = <String, TvInfo>{}.obs;

  void setWatchLists(Map<String, TvInfo> watchLists) {
    //再往列表填充数据
    list.clear();
    list.addAll(watchLists);
  }

  MapEntry<String, TvInfo> getItemByIndex(int index) {
    final item = list.entries.elementAt(index);
    return item;
  }
}

class CollectionListsDataProvider extends GetxController {
  final list = <String, TvInfo>{}.obs;
  final _collectionDbControl = CollectionDbRepository();

  CollectionListsDataProvider() {
    _collectionDbControl.dogs().then((value) {
      list.clear();
      list.addAll(value);
    });
  }

  MapEntry<String, TvInfo> getItemByIndex(int index) {
    final MapEntry<String, TvInfo> item = list.entries.elementAt(index);
    return item;
  }

  void selectOrNot(MapEntry<String, TvInfo>? data) {
    if(data == null){
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

  void setWatchLists(Map<String, TvInfo> watchLists) {
    list.clear();
    list.addAll(watchLists);
  }
}