import 'package:get/get.dart';
import 'package:tv_sink/control/usecase/SetOptionalTvList.dart';
import '../data/db/CollectionDbControl.dart';
import '../domain/model/TvInfo.dart';

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
  final _collectionDbControl = CollectionDbControl();

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

class PlayPositionController {
  final user = Rxn<MapEntry<String, TvInfo>>(null);

  final selectUrl = RxnString().obs;

  void setUser(MapEntry<String, TvInfo> _user) {
    user.value = _user;
    selectUrl.value.value = _user.value.tvgUrl;
  }

  void setUrl(String url) {
    user.value?.value.tvgUrl = url;
    selectUrl.value.value = url;
  }
}
