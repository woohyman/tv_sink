import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:universal_platform/universal_platform.dart';

import '../../util/log_util.dart';

class AppOpenAdManager {
  String adUnitId = UniversalPlatform.isAndroid
      ? 'ca-app-pub-3940256099942544/9257395921'
      : 'ca-app-pub-3940256099942544/5662855259';

  AppOpenAd? _appOpenAd;

  void init(){
    _loadAd(false);
  }

  void _loadAd(bool showAfterLoad) {
    logger.i("------------------> 开始加载开屏广告 $showAfterLoad");
    AppOpenAd.load(
      adUnitId: adUnitId,
      orientation: AppOpenAd.orientationPortrait,
      request: const AdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(
        onAdLoaded: (ad) {
          ad.fullScreenContentCallback = FullScreenContentCallback(
            onAdShowedFullScreenContent: (ad) {},
            onAdFailedToShowFullScreenContent: (ad, error) {
              ad.dispose();
              _appOpenAd = null;
              _loadAd(false);
            },
            onAdDismissedFullScreenContent: (ad) {
              ad.dispose();
              _appOpenAd = null;
              _loadAd(false);
            },
          );

          logger.i("------------------> 开屏广告加载完成");
          _appOpenAd = ad;
          if (showAfterLoad) {
            logger.i("------------------> 加载完成后显示开屏广告");
            _appOpenAd = null;
            ad.show();
          }
        },
        onAdFailedToLoad: (error) {},
      ),
    );
  }

  void show() {
    if(_appOpenAd != null){
      _appOpenAd?.show();
    }else{
      _loadAd(true);
    }
  }
}
