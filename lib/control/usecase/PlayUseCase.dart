import 'package:get/get.dart';
import '../../data/SharePreference.dart';
import '../../domain/PlayControlManager.dart';
import '../../domain/WifiManager.dart';
import '../../domain/ad/TvInterstitialAd.dart';
import '../../domain/model/user.dart';
import '../../util/const.dart';
import '../../control/WatchListsController.dart';

class PlayUseCase {
  void invoke(User user) {
    final _playPosController = Get.find<PlayPositionController>();
    _playPosController.setUser(user);

    if (WifiManager.instance.isNeedConnectWithWifi) {
      eventBus.fire(const MapEntry(keyWifiCompulsion, null));
      PlayControlManager.instance.pause();
      return;
    }

    //开始加载广告
    TvInterstitialAd.instance.load();
    TvInterstitialAd.instance.showAd(user.selectUrl??"", () {
      eventBus.fire(const MapEntry(keySelectState, [listItemSelect]));
      PlayControlManager.instance
          .setResourceAndPlay(_playPosController.selectUrl?.value);
      saveHistorySharedPreferences(MapEntry(user.name, user));
    });
  }
}
