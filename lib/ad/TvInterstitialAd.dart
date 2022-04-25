import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:tvSink/business/PlayControlManager.dart';
import 'package:tvSink/util/log.dart';

class TvInterstitialAd {
  TvInterstitialAd._();

  //第一种方式调用
  factory TvInterstitialAd() {
    return instance;
  }

  //第二种方式调用
  static TvInterstitialAd instance = TvInterstitialAd._();

  InterstitialAd? _interstitialAd;

  void loadAndShow(String _dataSource) {
    if(PlayControlManager.instance.intervalTime[_dataSource]??true){
      return;
    }
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3940256099942544/8691691433',
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            ad.show();
            _interstitialAd = ad;
            _interstitialAd?.fullScreenContentCallback = FullScreenContentCallback(
              onAdShowedFullScreenContent: (InterstitialAd ad) {
                PlayControlManager.instance.pause();
              },
              onAdDismissedFullScreenContent: (InterstitialAd ad) {
                PlayControlManager.instance.play();
                ad.dispose();
              },
              onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
                PlayControlManager.instance.play();
                ad.dispose();
              },
              onAdImpression: (InterstitialAd ad) {

              },
            );
          },
          onAdFailedToLoad: (LoadAdError error) {
            PlayControlManager.instance.play();
          },
        ));
  }

  Future<void> show() async {
    _interstitialAd?.show();
  }
}
