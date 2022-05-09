import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:tvSink/util/log.dart';
import '../model/sharePreference.dart';
import '../util/const.dart';
import 'EventBus.dart';
import 'PlayControlManager.dart';

class WifiManager {
  ConnectivityResult _result = ConnectivityResult.none;
  bool _isNeedWifi = false;

  WifiManager._();

  //第一种方式调用
  factory WifiManager() {
    return instance;
  }

  //第二种方式调用
  static WifiManager instance = WifiManager._();

  void init() async {
    _isNeedWifi = await fetchAppSettingWifiCompulsion();
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) async {
      _result = result;
      _isNeedWifi = await fetchAppSettingWifiCompulsion();
      bus.emit(keyWifiCompulsion);
      if (_result == ConnectivityResult.mobile && _isNeedWifi) {
        PlayControlManager.instance.pause();
      }
    });
  }

  void setIsNeedWifi(bool isNeedWifi) {
    _isNeedWifi = isNeedWifi;
  }

  bool isNeedConnectWithWifi() {
    return _result == ConnectivityResult.mobile && _isNeedWifi;
  }
}
