import 'dart:async';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:tv_sink/util/log.dart';

import '../play/play_manager.dart';

class TvInterstitialAdManager {
  InterstitialAd? _interstitialAd;

  void init() {
    _load();
  }

  void _load() async {

    if (_interstitialAd != null) {
      return;
    }
    logger.i("------------------> 开始加载插屏广告");

    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3940256099942544/8691691433',
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            logger.i("------------------> 插屏广告加载完成");
            _interstitialAd = ad;
          },
          onAdFailedToLoad: (LoadAdError error) {
            PlayManager.instant.play();
          },
        ));
  }

  Future<bool> show() async {
    Completer<bool> completer = Completer();
    if (_interstitialAd != null) {
      logger.i("------------------> 显示插屏广告");
      _interstitialAd?.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (ad) {
          ad.dispose();
          _interstitialAd = null;
          _load();
        },
        onAdShowedFullScreenContent: (ad) {
          ad.dispose();
          _interstitialAd = null;
          PlayManager.instant.pause();
          _load();
        },
        onAdFailedToShowFullScreenContent: (ad, error) {
          logger.i("------------------> 插屏广告失败");
        },
      );
      _interstitialAd?.show();
      completer.complete(true);
    }else{
      _load();
      completer.complete(false);
    }
    return completer.future;
  }
}
