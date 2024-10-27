import 'package:connectivity_plus/connectivity_plus.dart';
import '../data/share_preference/SharePreference.dart';
import 'PlayController.dart';
import 'data_provider/AppSetDataProvider.dart';

class AppSetController {
  ConnectivityResult _result = ConnectivityResult.none;
  final _appSetDataProvider = AppSetDataProvider.fromGet();

  AppSetController._();

  //第一种方式调用
  factory AppSetController() {
    return instance;
  }

  //第二种方式调用
  static AppSetController instance = AppSetController._();

  void init() async {
    Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> results) async {
      _result = results.first;
      _appSetDataProvider.allowPlayback =
          _result != ConnectivityResult.mobile ||
              (_result == ConnectivityResult.mobile &&
                  _appSetDataProvider.onlyPlayOnWifi);
      if (!_appSetDataProvider.allowPlayback) {
        PlayController.instance.pause();
      }
    });
  }

  void setAutoSourceSwitch(bool value){
    saveAppSetting(keyAutoSourceSwitch, value);
    _appSetDataProvider.autoSourceSwitch = value;
  }

  void setOnlyPlayOnWifi(bool value) {
    saveAppSetting(keyWifiSetting, value);
    _appSetDataProvider.onlyPlayOnWifi = value;
    _appSetDataProvider.allowPlayback = _result != ConnectivityResult.mobile ||
        (_result == ConnectivityResult.mobile && value);
    if (!_appSetDataProvider.allowPlayback) {
      PlayController.instance.pause();
    }
  }

  set enableBackgroundPlay(bool value) {
    saveAppSetting(keyBackgroundPlaySetting, value);
    _appSetDataProvider.enableBackgroundPlay = value;
  }
}
