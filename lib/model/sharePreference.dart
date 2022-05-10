import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../util/const.dart';

SharedPreferences? _sharedPreferences;
const String keySpHistory = "KeySpHistory";

//是否强制Wifi下才能播放
const String keyAppSettingWifiCompulsion = "KeyAppSettingWifiCompulsion";

//保存指定电视名称历史列表
void saveHistorySharedPreferences(MapEntry<String, dynamic> mapEntry) async {

  SharedPreferences _preferences = _sharedPreferences ?? await SharedPreferences.getInstance();
  List<String>? _list = _preferences.getStringList(keySpHistory) ?? [];

  if (_list.isNotEmpty) {
    List<String> item = _list.last.split("------");
    if (item.length != 2 || item[0] == mapEntry.key) {
      return;
    }
  }

  _list.add(mapEntry.key + "------" + json.encode(mapEntry.value));
  _preferences.setStringList(keySpHistory, _list);
}

//获取历史列表
Future<Map<String, dynamic>> fetchHistorySharedPreferences() async {
  SharedPreferences _preferences = _sharedPreferences ?? await SharedPreferences.getInstance();
  List<String> _list = _preferences.getStringList(keySpHistory)?.reversed.toList() ?? [];
  Map<String, dynamic> map = {};
  for (var element in _list) {
    List<String> item = element.split("------");
    if (item.length != 2) {
      continue;
    }
    map[item[0]] = json.decode(item[1]);
  }
  return map;
}

//保存收藏列表
Future<void> saveFavoriteSharedPreferences(Map<String, dynamic> _list) async {
  SharedPreferences _preferences = _sharedPreferences ?? await SharedPreferences.getInstance();
  List<String> values = [];
  _list.forEach((key, value) {
    values.add(key + "------" + json.encode(value));
  });
  _preferences.setStringList(keySPFavoriteList, values);
}

//获取收藏列表
Future<Map<String, dynamic>> fetchFavoriteSharedPreferences() async {
  SharedPreferences _preferences = _sharedPreferences ?? await SharedPreferences.getInstance();
  List<String> _list = _preferences.getStringList(keySPFavoriteList)?.toList() ?? [];
  Map<String, dynamic> map = {};
  for (var element in _list) {
    List<String> item = element.split("------");
    if (item.length != 2) {
      continue;
    }
    map[item[0]] = json.decode(item[1]);
  }
  return map;
}

Future<void> saveAppSettingWifiCompulsion(bool _state) async {
  SharedPreferences _preferences = _sharedPreferences ?? await SharedPreferences.getInstance();
  _preferences.setBool(keyAppSettingWifiCompulsion, _state);
}

Future<bool> fetchAppSettingWifiCompulsion() async {
  SharedPreferences _preferences = _sharedPreferences ?? await SharedPreferences.getInstance();
  return _preferences.getBool(keyAppSettingWifiCompulsion) ?? false;
}
