import 'package:get/get.dart';
import '../model/tv_channel_info_model.dart';
import '../model/play_url_info.dart';

//用于管理播放数据
class PlayDataProvider {
  final tvInfo = Rxn<MapEntry<String, TvChannelInfoModel>>(null);
  final playUrlMap = <String, PlayUrlInfo>{};
  final selectUrl = RxnString();

  void setUser(MapEntry<String, TvChannelInfoModel> _tvInfo) {
    playUrlMap.clear();
    for (var value in _tvInfo.value.tvgUrlList) {
      playUrlMap[value] = PlayUrlInfo(false, 0);
    }

    tvInfo.value = _tvInfo;
  }

  void setUrl(String? url) {
    if (url == null) {
      return;
    }
    selectUrl.value = url;

    playUrlMap.update(url, (value) {
      return PlayUrlInfo(true, value.successCount + 1);
    });
  }

  void resetUrlStatus() {
    selectUrl.value = tvInfo.value?.value.tvgUrlList.first ?? "";

    playUrlMap.updateAll((value, info) {
      return PlayUrlInfo(false, 0);
    });
  }

  factory PlayDataProvider.fromGet() {
    return Get.find<PlayDataProvider>();
  }

  PlayDataProvider();
}
