import 'package:get/get.dart';

import 'logic.dart';

class AppSettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppSettingLogic());
  }
}