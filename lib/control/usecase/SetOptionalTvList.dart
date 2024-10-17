import 'package:get/get.dart';

import '../../data/OptionalUrlDbControl.dart';
import '../../domain/model/TvUrlList.dart';
import '../WatchListsController.dart';

class SetOptionalTvList {
  final _optionalUrlDbControl = OptionalUrlDbControl();
  final _watchListsController = Get.find<WatchListsController>();

  void invoke(Map<String, dynamic> list) {
    //先往数据库中填充数据
    _optionalUrlDbControl.deleteAll();
    list.forEach((val1, val2) {
      for (var item in (val2["tvgUrl"] as List<dynamic>)) {
        _optionalUrlDbControl.insertDog(TvUrlList(
          name: val1,
          tvgId: val2["tvgId"],
          tvgCountry: val2["tvgCountry"],
          tvgLanguage: val2["tvgLanguage"],
          tvgLogo: val2["tvgLogo"],
          groupTitle: val2["groupTitle"],
          tvgUrl: item,
        ));
      }
    });

    //往getx里填充数据
    _watchListsController.setWatchLists(list);
  }
}
