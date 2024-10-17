import 'package:get/get.dart';
import '../../data/OptionalUrlDbControl.dart';
import '../WatchListsController.dart';

class GetOptionalTvList {
  final _optionalUrlDbControl = OptionalUrlDbControl();
  final _watchListsController = Get.find<WatchListsController>();

  void invoke() {
    //先从数据库中查询
    _optionalUrlDbControl.dogs().then((value) {
      final Map<String, dynamic> _tvLis = <String, dynamic>{};
      for (var value in value) {
        if (_tvLis.containsKey(value.name)) {
          (_tvLis[value.name]["tvgUrl"] as List<String>)
              .add(value.tvgUrl);
        } else {
          _tvLis[value.name] = <String, dynamic>{
            "tvgId": value.tvgId,
            "tvgCountry": value.tvgCountry,
            "tvgLanguage": value.tvgLanguage,
            "tvgLogo": value.tvgLogo,
            "groupTitle": value.groupTitle,
            "tvgUrl": [value.tvgUrl],
          };
        }
      }
      _watchListsController.setWatchLists(_tvLis);
    });
  }
}
