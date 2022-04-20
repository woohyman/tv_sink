import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'PlayControlManager.dart';

class WifiManager {
  ConnectivityResult _result = ConnectivityResult.none;
  bool isNeedWifi = false;

  WifiManager._();

  //第一种方式调用
  factory WifiManager() {
    return instance;
  }

  //第二种方式调用
  static WifiManager instance = WifiManager._();

  void fetchWifiStateByLocal() {
    SharedPreferences.getInstance().then((preferences) => {
          if (isNeedWifi != !(preferences.getBool("11") ?? true))
            {
              isNeedWifi = !(preferences.getBool("11") ?? true),
            }
        });
  }

  void fetchWifiStateByReal() {
    Connectivity().checkConnectivity().then((value) => {
          SharedPreferences.getInstance().then((preferences) => {
                _result = value,
                isNeedWifi = !(preferences.getBool("11") ?? true)
              })
        });

    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (_result == ConnectivityResult.mobile && isNeedWifi) {
        PlayControlManager.instance.pause();
      }
    });
  }

  bool isTvShow() {
    return _result == ConnectivityResult.mobile && isNeedWifi;
  }
}
