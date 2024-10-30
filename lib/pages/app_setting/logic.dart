import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tv_sink/pages/app_setting/state.dart';
import '../../data/share_preference/SharePreference.dart';
import '../../domain/data_provider/AppSetDataProvider.dart';
import '../../domain/play/play_manager.dart';
import '../../domain/upgrade/UpgradeController.dart';

class AppSettingLogic extends GetxController {
  final _upgradeController = UpgradeController.fromGet();
  final state = AppSettingState();
  final _appSetDataProvider = AppSetDataProvider.fromGet();

  void setAutoSourceSwitch(bool value) {
    saveAppSetting(keyAutoSourceSwitch, value);
    _appSetDataProvider.autoSourceSwitch = value;
  }

  void setOnlyPlayOnWifi(bool value) {
    saveAppSetting(keyWifiSetting, value);
    _appSetDataProvider.onlyPlayOnWifi = value;
    if (!_appSetDataProvider.allowPlayback) {
      PlayManager.instant.pause();
    }
  }

  set enableBackgroundPlay(bool value) {
    saveAppSetting(keyAllowBkgPlay, value);
    _appSetDataProvider.enableBackgroundPlay = value;
  }

  void showDialog(BuildContext context) {
    _upgradeController.showDialog(context);
  }
}
