import 'package:get/get.dart';
import 'package:supabase/supabase.dart' hide User;

import '../data/OptionalUrlDbControl.dart';
import '../data/RemoteUrlControl.dart';
import '../domain/model/TvUrlList.dart';
import '../domain/model/user.dart';
import '../util/log.dart';

class FeatureListsController {
  final Map<String, dynamic> _list = <String, dynamic>{};

  Map<String, dynamic> get list => _list.obs;

  void setWatchLists(Map<String, dynamic> watchLists) {
    _list.clear();
    _list.addAll(watchLists);
  }

  User getItemByIndex(int index) {
    final item = _list.entries.elementAt(index);
    final urlList = (item.value['tvgUrl'] as List<dynamic>)
        .map((e) => e as String)
        .toList();
    return User(
      item.key,
      item.value["tvgId"],
      item.value["tvgCountry"],
      item.value["tvgLanguage"],
      item.value["tvgLogo"],
      item.value["groupTitle"],
      urlList,
      urlList.first,
    );
  }
}

class WatchListsController {
  RxMap<String, dynamic> list = <String, dynamic>{}.obs;

  void setWatchLists(Map<String, dynamic> watchLists) {
    //再往列表填充数据
    list.clear();
    list.addAll(watchLists);
  }

  User getItemByIndex(int index) {
    final item = list.entries.elementAt(index);
    final urlList = (item.value['tvgUrl'] as List<dynamic>)
        .map((e) => e as String)
        .toList();
    return User(
      item.key,
      item.value["tvgId"],
      item.value["tvgCountry"],
      item.value["tvgLanguage"],
      item.value["tvgLogo"],
      item.value["groupTitle"],
      urlList,
      urlList.first,
    );
  }
}

class CollectionListsController extends GetxController {
  RxMap<String, dynamic> list = <String, dynamic>{}.obs;

  User getItemByIndex(int index) {
    final item = list.entries.elementAt(index);
    final urlList = (item.value['tvgUrl'] as List<dynamic>)
        .map((e) => e as String)
        .toList();
    return User(
      item.key,
      item.value["tvgId"],
      item.value["tvgCountry"],
      item.value["tvgLanguage"],
      item.value["tvgLogo"],
      item.value["groupTitle"],
      urlList,
      urlList.first,
    );
  }

  void selectOrNot(String tvName, dynamic data) {
    if (list.containsKey(tvName)) {
      list.remove(tvName);
    } else {
      list[tvName] = data;
    }
  }

  void setWatchLists(Map<String, dynamic> watchLists) {
    list.clear();
    list.addAll(watchLists);
  }
}

class PlayPositionController {
  Rxn<User> user = Rxn<User>();

  RxString? get selectUrl => user.value?.selectUrl.obs;

  void setUser(User _user) {
    user.value = _user;
  }

  void setUrl(String url) {
    user.value?.selectUrl = url;
  }
}