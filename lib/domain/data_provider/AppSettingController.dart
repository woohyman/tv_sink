
import 'package:get/get.dart';

import '../../data/share_preference/SharePreference.dart';

class AppSettingController {
  RxBool switchSelected = true.obs;

  AppSettingController() {
    fetchAppSettingWifiCompulsion().then(
      (value) {
        switchSelected.value = value;
      },
    );
  }
}
