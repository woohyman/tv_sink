import 'package:get/get.dart';
import '../../data/db/OptionalDbRepository.dart';
import 'WatchListsDataProvider.dart';

class GetOptionalTvList {
  final _optionalUrlDbControl = OptionalDbRepository();
  final _watchListsController = Get.find<WatchListsDataProvider>();

  void invoke() {
    //先从数据库中查询
    _optionalUrlDbControl.dogs().then((value) {
      _watchListsController.setWatchLists(value);
    });
  }
}
