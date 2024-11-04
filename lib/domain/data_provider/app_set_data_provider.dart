import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import '../../data/local/share_preference.dart';
import '../play/play_manager.dart';

class AppSetDataProvider {
  //是否只允许wifi状态下播放
  final RxBool _onlyPlayOnWifi = true.obs;

  //是否允许后台播放
  final RxBool _enableBackgroundPlay = true.obs;

  //是否自动切换播放源
  final RxBool _autoSourceSwitch = true.obs;

  //当前的连接状态
  final _connectivityResult = Rx<ConnectivityResult>(ConnectivityResult.none);

  bool get autoSourceSwitch {
    return _autoSourceSwitch.value;
  }

  bool get onlyPlayOnWifi {
    return _onlyPlayOnWifi.value;
  }

  bool get enableBackgroundPlay {
    return _enableBackgroundPlay.value;
  }

  bool get allowPlayback {
    return (_connectivityResult.value == ConnectivityResult.mobile &&
            _onlyPlayOnWifi.value) ||
        _connectivityResult.value != ConnectivityResult.mobile;
  }

  set autoSourceSwitch(value) {
    _autoSourceSwitch.value = value;
  }

  set onlyPlayOnWifi(value) {
    _onlyPlayOnWifi.value = value;
  }

  set enableBackgroundPlay(value) {
    _enableBackgroundPlay.value = value;
  }

  factory AppSetDataProvider.fromGet() {
    return Get.find<AppSetDataProvider>();
  }

  AppSetDataProvider() {
    fetchData();
  }

  Future<void> fetchData() async {
    _autoSourceSwitch.value = await fetchAppSetting(keyAutoSourceSwitch);
    _onlyPlayOnWifi.value = await fetchAppSetting(keyWifiSetting);
    _enableBackgroundPlay.value = await fetchAppSetting(keyAllowBkgPlay);

    Connectivity().onConnectivityChanged.listen(
      (List<ConnectivityResult> results) async {
        _connectivityResult.value = results.first;
        if (!allowPlayback) {
          PlayManager.fromGet().pause();
        }
      },
    );
  }
}
