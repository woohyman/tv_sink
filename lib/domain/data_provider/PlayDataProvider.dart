import 'package:get/get.dart';
import 'package:tv_sink/domain/model/TvInfo.dart';

//用于管理播放数据
class PlayDataProvider {
  final tvInfo = Rxn<MapEntry<String, TvInfo>>(null);

  final selectUrl = RxnString().obs;

  void setUser(MapEntry<String, TvInfo> _tvInfo) {
    tvInfo.value = _tvInfo;
    selectUrl.value.value = _tvInfo.value.tvgUrl;
  }

  void setUrl(String url) {
    tvInfo.value?.value.tvgUrl = url;
    selectUrl.value.value = url;
  }

  factory PlayDataProvider.fromGet() {
    return Get.find<PlayDataProvider>();
  }

  PlayDataProvider();
}
