import 'package:get/get.dart';
import '../../data/share_preference/SharePreference.dart';

class AppSetDataProvider {

  //是否只允许wifi状态下播放
  final RxBool _onlyPlayOnWifi = true.obs;

  //是否允许后台播放
  final RxBool _enableBackgroundPlay = true.obs;

  //是否允许视频播放
  final RxBool _allowPlayback = true.obs;

  bool get onlyPlayOnWifi {
    return _onlyPlayOnWifi.value;
  }

  bool get enableBackgroundPlay {
    return _enableBackgroundPlay.value;
  }

  bool get allowPlayback {
    return _allowPlayback.value;
  }

  set onlyPlayOnWifi(value) {
    _onlyPlayOnWifi.value = value;
  }

  set enableBackgroundPlay(value) {
    _enableBackgroundPlay.value = value;
  }

  set allowPlayback(value) {
    _allowPlayback.value = value;
  }

  factory AppSetDataProvider.fromGet() {
    return Get.find<AppSetDataProvider>();
  }

  factory AppSetDataProvider.preFetchData() {
    final _provider = AppSetDataProvider._();
    _provider.fetchAppData();
    return _provider;
  }

  void fetchAppData() {
    fetchAppSetting(keyWifiSetting).then(
      (value) {
        _onlyPlayOnWifi.value = value;
      },
    );
    fetchAppSetting(keyBackgroundPlaySetting).then(
      (value) {
        _enableBackgroundPlay.value = value;
      },
    );
  }

  AppSetDataProvider._();
}
