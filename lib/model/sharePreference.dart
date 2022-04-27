import 'package:shared_preferences/shared_preferences.dart';

import '../util/const.dart';
import '../util/log.dart';

SharedPreferences? _sharedPreferences;
const String keySpHistory = "KeySpHistory";

//保存指定电视名称历史列表
void saveHistorySharedPreferences(String tvName) async {
  SharedPreferences _preferences = _sharedPreferences ?? await SharedPreferences.getInstance();
  List<String>? _list = _preferences.getStringList(keySpHistory) ?? [];
  if (_list.isNotEmpty && _list.last == tvName) {
    return;
  }
  _list.add(tvName);
  _preferences.setStringList(keySpHistory, _list);
}

//获取历史列表
Future<List<String>> fetchHistorySharedPreferences() async {
  SharedPreferences _preferences = _sharedPreferences ?? await SharedPreferences.getInstance();
  return _preferences.getStringList(keySpHistory)?.toList() ?? [];
}

//保存收藏列表
Future<void> saveFavoriteSharedPreferences(List<String> _list) async {
  SharedPreferences _preferences = _sharedPreferences ?? await SharedPreferences.getInstance();
  _preferences.setStringList(keySharePreferenceFavoriteList, _list);
}

//获取收藏列表
Future<List<String>> fetchFavoriteSharedPreferences() async {
  SharedPreferences _preferences = _sharedPreferences ?? await SharedPreferences.getInstance();
  return _preferences.getStringList(keySharePreferenceFavoriteList)?.toList() ?? [];
}
