
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? _sharedPreferences;

//是否强制Wifi下才能播放
const String keyAppSettingWifiCompulsion = "KeyAppSettingWifiCompulsion";

Future<void> saveAppSettingWifiCompulsion(bool _state) async {
  SharedPreferences _preferences = _sharedPreferences ?? await SharedPreferences.getInstance();
  _preferences.setBool(keyAppSettingWifiCompulsion, _state);
}

Future<bool> fetchAppSettingWifiCompulsion() async {
  SharedPreferences _preferences = _sharedPreferences ?? await SharedPreferences.getInstance();
  return _preferences.getBool(keyAppSettingWifiCompulsion) ?? false;
}
