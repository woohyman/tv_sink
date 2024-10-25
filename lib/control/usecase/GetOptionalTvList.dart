import 'package:get/get.dart';
import 'package:tv_sink/util/log.dart';
import '../../data/db/OptionalDbControl.dart';
import '../WatchListsController.dart';

class GetOptionalTvList {
  final _optionalUrlDbControl = OptionalDbControl();
  final _watchListsController = Get.find<WatchListsController>();

  void invoke() {
    //先从数据库中查询
    _optionalUrlDbControl.dogs().then((value) {
      _watchListsController.setWatchLists(value);
    });
  }
}
