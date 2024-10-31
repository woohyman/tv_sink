import 'package:get/get.dart';

import '../model/data.dart';
import '../model/tv_info.dart';

//用于管理播放数据
class PlayDataProvider {
  final tvInfo = Rxn<MapEntry<String, TvInfo>>(null);
  final playUrlMap = <String, PlayUrlInfo>{};
  final selectUrl = RxnString().obs;

  void setUser(MapEntry<String, TvInfo> _tvInfo) {
    playUrlMap.clear();
    for (var value in _tvInfo.value.tvgUrlList) {
      playUrlMap[value] = PlayUrlInfo(false, 0);
    }

    tvInfo.value = _tvInfo;
    selectUrl.value.value = _tvInfo.value.tvgUrlList.first;
  }

  void setUrl(String? url) {
    if (url == null) {
      return;
    }
    selectUrl.value.value = url;

    playUrlMap.update(url, (value) {
      return PlayUrlInfo(true, value.successCount + 1);
    });
  }

  void resetUrlStatus() {
    selectUrl.value.value = tvInfo.value?.value.tvgUrlList.first ?? "";

    playUrlMap.updateAll((value, info) {
      return PlayUrlInfo(false, 0);
    });
  }

  factory PlayDataProvider.fromGet() {
    return Get.find<PlayDataProvider>();
  }

  PlayDataProvider();
}
