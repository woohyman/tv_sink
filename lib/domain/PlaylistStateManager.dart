import 'package:get/get.dart';

import 'data_provider/WatchListsController.dart';

class PlaylistStateManager {
  PlaylistStateManager._();

  //第一种方式调用
  factory PlaylistStateManager() {
    return instance;
  }

  //第二种方式调用
  static PlaylistStateManager instance = PlaylistStateManager._();

  Position position = Position(0, 0);
  final Map<String, String?> liveSource = {};

  /*管理收藏列表*/
  bool isContain(tvName) {
    final featuredTvLis = Get.find<CollectionListsController>().list;
    return featuredTvLis.keys.contains(tvName);
  }

  void removeUrl(String tvName) {
    final featuredTvLis = Get.find<CollectionListsController>().list;
    featuredTvLis.remove(tvName);
  }

  /*管理播放源地址*/

  void setLiveSource(String key, String? value) {
    liveSource[key] = value;
  }

  String? getSelectKey(String tvName) {
    if (getSourceByKey(tvName).isEmpty) {
      return null;
    } else {
      return getSourceByKey(tvName);
    }
  }

  String getSourceByKey(String tvName) {
    if (liveSource.containsKey(tvName)) {
      return liveSource[tvName] ?? "";
    }

    final _tvList = Get.find<WatchListsController>().list;

    return _tvList[tvName]?.tvgUrl ?? "";
  }
}

class Position {
  int tabIndex = 0;
  int listIndex = 0;

  Position(int _tabIndex, int _listIndex) {
    tabIndex = _tabIndex;
    listIndex = _listIndex;
  }
}
