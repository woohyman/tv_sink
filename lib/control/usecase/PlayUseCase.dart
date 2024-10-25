
import 'package:get/get.dart';
import 'package:tv_sink/domain/model/TvInfo.dart';
import '../../data/db/CollectionDbControl.dart';
import '../../data/db/HistoryDbControl.dart';
import '../../domain/PlayControlManager.dart';
import '../../domain/WifiManager.dart';
import '../../domain/ad/TvInterstitialAd.dart';
import '../../util/const.dart';
import '../../control/WatchListsController.dart';

class PlayUseCase {
  void invoke(MapEntry<String,TvInfo> entry) {
    final _playPosController = Get.find<PlayPositionController>();
    _playPosController.setUser(entry);

    if (WifiManager.instance.isNeedConnectWithWifi) {
      eventBus.fire(const MapEntry(keyWifiCompulsion, null));
      PlayControlManager.instance.pause();
      return;
    }

    //开始加载广告
    TvInterstitialAd.instance.load();
    TvInterstitialAd.instance.showAd(entry.value.tvgUrl, () {
      eventBus.fire(const MapEntry(keySelectState, [listItemSelect]));
      PlayControlManager.instance
          .setResourceAndPlay(_playPosController.selectUrl.value.value);
      HistoryDbControl().insertDog(entry);
    });
  }
}
