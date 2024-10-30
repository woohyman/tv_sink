import 'package:get/get.dart';

import 'logic.dart';

class ParseM3uBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ParseM3uLogic());
  }
}