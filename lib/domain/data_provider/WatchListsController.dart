import 'package:get/get.dart';

import '../../data/db/CollectionDbRepository.dart';
import '../model/RemoteListUrl.dart';
import '../model/TvInfo.dart';

class FeatureListsController {
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

class WatchListsController {
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

class CollectionListsController extends GetxController {
  final list = <String, TvInfo>{}.obs;
  final _collectionDbControl = CollectionDbRepository();

  CollectionListsController() {
    _collectionDbControl.dogs().then((value) {
      list.clear();
      list.addAll(value);
    });
  }

  MapEntry<String, TvInfo> getItemByIndex(int index) {
    final MapEntry<String, TvInfo> item = list.entries.elementAt(index);
    return item;
  }

  void selectOrNot(MapEntry<String, TvInfo> data) {
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

class RemoteM3uListController {
  final list = <RemoteListUrl>[];

  void setList(List<RemoteListUrl> watchLists) {
    //再往列表填充数据
    list.clear();
    list.addAll(watchLists);
  }

  factory RemoteM3uListController.fromGet() {
    return Get.find<RemoteM3uListController>();
  }

  RemoteM3uListController();
}
