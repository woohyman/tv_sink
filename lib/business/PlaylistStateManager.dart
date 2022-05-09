import '../model/bean/data.dart';
import '../model/bean/user.dart';

class PlaylistStateManager {
  PlaylistStateManager._();

  //第一种方式调用
  factory PlaylistStateManager() {
    return instance;
  }

  //第二种方式调用
  static PlaylistStateManager instance = PlaylistStateManager._();

  Position position = Position(0, 0);
  final liveSource = {};

  //通过位置来获取User对象
  User getUserByPosition(int tabIndex, int listIndex) {
    return User.fromJson(tvData[tabIndex]?.values.elementAt(listIndex));
  }

  void setPositionByName(String tvName) {
    if (chineseTvLis.containsKey(tvName)) {
      position.tabIndex = 0;
      position.listIndex = chineseTvLis.keys.toList().indexOf(tvName);

    } else if (foreignTvLis.containsKey(tvName)) {
      position.tabIndex = 1;
      position.listIndex = foreignTvLis.keys.toList().indexOf(tvName);

    }else{
      position.tabIndex = 0;
      position.listIndex = 0;
    }
  }

  /*管理收藏列表*/
  bool isContain(tvName) {
    return featuredTvLis.keys.contains(tvName);
  }

  void addCollect(String tvName, dynamic _user) {
    featuredTvLis[tvName] = _user;
  }

  void removeUrl(String tvName) {
    featuredTvLis.remove(tvName);
  }

  /*管理播放源地址*/

  void setLiveSource(String key, String? value) {
    liveSource[key] = value;
  }

  String getSourceByKey(String tvName) {
    if (liveSource.containsKey(tvName)) {
      return liveSource[tvName];
    }

    if (chineseTvLis.containsKey(tvName)) {
      liveSource[tvName] = User.fromJson(chineseTvLis[tvName]).tvgUrl.first;
      return liveSource[tvName];
    }

    if (foreignTvLis.containsKey(tvName)) {
      liveSource[tvName] = User.fromJson(foreignTvLis[tvName]).tvgUrl.first;
      return liveSource[tvName];
    }

    return "";
  }
}

Map<int, Map<String, dynamic>> tvData = {
  0: chineseTvLis,
  1: foreignTvLis,
  2: featuredTvLis,
};

class Position {
  int tabIndex = 0;
  int listIndex = 0;

  Position(int _tabIndex, int _listIndex) {
    tabIndex = _tabIndex;
    listIndex = _listIndex;
  }
}
