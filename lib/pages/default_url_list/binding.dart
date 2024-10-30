import 'package:get/get.dart';

import 'logic.dart';

class DefaultUrlListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DefaultUrlListLogic());
  }
}