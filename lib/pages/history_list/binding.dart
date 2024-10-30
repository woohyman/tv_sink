import 'package:get/get.dart';

import 'logic.dart';

class HistoryListBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => HistoryListLogic());
  }
}