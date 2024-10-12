import 'package:connectivity_plus/connectivity_plus.dart';
import '../datastore/sharePreference.dart';
import '../util/const.dart';
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
    Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) async {
      _result = result;
      _isNeedWifi = await fetchAppSettingWifiCompulsion();
      eventBus.fire(const MapEntry(keyWifiCompulsion, null));
      if (_result == ConnectivityResult.mobile && _isNeedWifi) {
        PlayControlManager.instance.pause();
      }
    });
  }

  void setIsNeedWifi(bool isNeedWifi) {
    _isNeedWifi = isNeedWifi;

    if (WifiManager.instance.isNeedConnectWithWifi) {
      PlayControlManager.instance.pause();
    }
    eventBus.fire(const MapEntry(keyWifiCompulsion, null));
    saveAppSettingWifiCompulsion(isNeedWifi);
  }

  bool get isNeedConnectWithWifi {
    return _result == ConnectivityResult.mobile && _isNeedWifi;
  }


}
