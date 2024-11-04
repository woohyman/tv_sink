
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tv_sink/pages/app_setting/state.dart';
import '../../data/local/share_preference.dart';
import '../../domain/data_provider/app_set_data_provider.dart';
import '../../domain/play/play_manager.dart';
import '../../domain/upgrade/upgrade_manager.dart';

class AppSettingLogic extends GetxController {
  final _upgradeController = UpgradeManager.fromGet();
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
      PlayManager.fromGet().pause();
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
