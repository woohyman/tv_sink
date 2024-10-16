import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../datastore/RemoteUrlControl.dart';
import '../provider/watch_lists_controller.dart';
import 'model/user.dart';

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

  //通过位置来获取User对象
  User getUserByPosition(int tabIndex, int listIndex) {
    final data = tvData[tabIndex]?.values;
    final item = Map<String, dynamic>.from(data?.elementAt(listIndex));
    print("object ************************* ${item}");
    print("object ************************* ${item.runtimeType}");
    print("object ************************* ${item["tvgUrl"]}");
    return User.fromJson(item);
  }

  void setPositionByName(String tvName) {
    final foreignTvLis = Get.find<WatchListsController>().list;
    if (defaultTvList.containsKey(tvName)) {
      position.tabIndex = 0;
      position.listIndex = defaultTvList.keys.toList().indexOf(tvName);
    } else if (foreignTvLis.containsKey(tvName)) {
      position.tabIndex = 1;
      position.listIndex = foreignTvLis.keys.toList().indexOf(tvName);
    } else {
      position.tabIndex = 0;
      position.listIndex = 0;
    }
  }

  /*管理收藏列表*/
  bool isContain(tvName) {
    final featuredTvLis = Get.find<CollectionListsController>().list;
    return featuredTvLis.keys.contains(tvName);
  }

  void addCollect(String tvName, dynamic _user) {
    final featuredTvLis = Get.find<CollectionListsController>().list;
    featuredTvLis[tvName] = _user;
  }

  void removeUrl(String tvName) {
    final featuredTvLis = Get.find<CollectionListsController>().list;
    featuredTvLis.remove(tvName);
  }

  /*管理播放源地址*/

  void setLiveSource(String key, String? value) {
    liveSource[key] = value;
  }

  String getSourceByKey(String tvName) {
    if (liveSource.containsKey(tvName)) {
      return liveSource[tvName] ?? "";
    }

    if (defaultTvList.containsKey(tvName)) {
      liveSource[tvName] =
          User.fromJson(Map<String, dynamic>.from(defaultTvList[tvName]))
              .tvgUrl
              .first;
      return liveSource[tvName] ?? "";
    }

    final foreignTvLis = Get.find<WatchListsController>().list;
    if (foreignTvLis.containsKey(tvName)) {
      liveSource[tvName] =
          User.fromJson(Map<String, dynamic>.from(foreignTvLis[tvName]))
              .tvgUrl
              .first;
      return liveSource[tvName] ?? "";
    }

    return "";
  }
}

Map<int, Map<String, dynamic>> get tvData {
  return {
    0: defaultTvList,
    1: Get.find<WatchListsController>().list,
    2: Get.find<CollectionListsController>().list,
  };
}

class Position {
  int tabIndex = 0;
  int listIndex = 0;

  Position(int _tabIndex, int _listIndex) {
    tabIndex = _tabIndex;
    listIndex = _listIndex;
  }
}
