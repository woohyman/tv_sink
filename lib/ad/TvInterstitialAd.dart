import 'package:google_mobile_ads/google_mobile_ads.dart';
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

  void load() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3940256099942544/8691691433',
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            _interstitialAd = ad;

            _interstitialAd?.fullScreenContentCallback = FullScreenContentCallback(
              onAdShowedFullScreenContent: (InterstitialAd ad) => logger.e('aaaaa %ad onAdShowedFullScreenContent.'),
              onAdDismissedFullScreenContent: (InterstitialAd ad) {
                ad.dispose();
              },
              onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
                ad.dispose();
              },
              onAdImpression: (InterstitialAd ad) => print('$ad impression occurred.'),
            );
          },
          onAdFailedToLoad: (LoadAdError error) {

          },
        ));
  }

  Future<void> show() async {
    try {
      await _interstitialAd?.show();
    } catch (err) {

    }
  }
}
