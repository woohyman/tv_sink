import 'package:get/get.dart';

class WatchListsController {
  final Map<String, dynamic> _list = <String, dynamic>{};

  Map<String, dynamic> get list => _list.obs;

  void setWatchLists(Map<String, dynamic> watchLists) {
    _list.clear();
    _list.addAll(watchLists);
  }
}

class CollectionListsController {
  final Map<String, dynamic> _list = <String, dynamic>{};

  Map<String, dynamic> get list => _list.obs;

  void selectOrNot(String tvName, dynamic data) {
    if (_list.containsKey(tvName)) {
      _list.remove(tvName);
    } else {
      _list[tvName] = data;
    }
  }

  void setWatchLists(Map<String, dynamic> watchLists) {
    _list.clear();
    _list.addAll(watchLists);
  }
}
