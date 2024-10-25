import 'package:get/get.dart';
import '../../data/db/OptionalDbControl.dart';
import '../../domain/model/TvInfo.dart';
import '../WatchListsController.dart';

class SetOptionalTvList {
  final _optionalUrlControl = OptionalDbControl();
  final _watchListsController = Get.find<WatchListsController>();

  void invoke(Map<String, TvInfo> list) {
    //先往数据库中填充数据
    _optionalUrlControl.deleteAll();
    _optionalUrlControl.insertAll(list);
  }
}
