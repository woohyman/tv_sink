import 'dart:async';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:tv_sink/util/log.dart';

import '../PlayController.dart';

class TvInterstitialAd {
  InterstitialAd? interstitialAd;

  TvInterstitialAd._();

  //第一种方式调用
  factory TvInterstitialAd() {
    return instance;
  }

  //第二种方式调用
  static TvInterstitialAd instance = TvInterstitialAd._();

  Future<void> load() async {
    if(interstitialAd != null ){
      return;
    }
    logger.i("++++++++++ 开始加载广告");
    Completer<void> completer = Completer();

    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3940256099942544/8691691433',
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            completer.complete();
            interstitialAd = ad;
            logger.i("++++++++++ 加载成功");
          },
          onAdFailedToLoad: (LoadAdError error) {
            completer.completeError(error);
            PlayController.instance.play();
          },
        ));
    return completer.future;
  }

  Future<bool> show() async {
    Completer<bool> completer = Completer();

    interstitialAd?.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (ad){
        completer.complete(true);
      },
      onAdShowedFullScreenContent: (ad){
        PlayController.instance.pause();
      },
      onAdFailedToShowFullScreenContent: (ad, error){
        completer.completeError(error);
      },
    );
    interstitialAd?.show();
    interstitialAd = null;
    load();
    return completer.future;
  }
}
