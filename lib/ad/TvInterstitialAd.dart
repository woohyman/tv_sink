import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../domain/PlayControlManager.dart';
import '../domain/PlaylistStateManager.dart';

class TvInterstitialAd {
  InterstitialAd? _ad;

  TvInterstitialAd._();

  //第一种方式调用
  factory TvInterstitialAd() {
    return instance;
  }

  //第二种方式调用
  static TvInterstitialAd instance = TvInterstitialAd._();

  Future<void> load() async {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3940256099942544/8691691433',
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            _ad = ad;
            return;
          },
          onAdFailedToLoad: (LoadAdError error) {
            _ad = null;
            PlayControlManager.instance.play();
          },
        ));
  }

  void showAd(String _dataSource, Function aaa) async {
    if (PlayControlManager.instance.intervalTime[PlaylistStateManager.instance.getSourceByKey(_dataSource)] ?? true) {
      aaa();
      return;
    }
    try {
      _ad!.fullScreenContentCallback = TvFullScreenContentCallback(aaa);
      _ad!.show();
    } catch (err) {
      await load();
      _ad?.fullScreenContentCallback = TvFullScreenContentCallback(aaa);
      _ad?.show();
    }
  }
}

class TvFullScreenContentCallback extends FullScreenContentCallback<InterstitialAd> {
  final Function _callback;

  TvFullScreenContentCallback(this._callback);

  @override
  GenericAdEventCallback? get onAdShowedFullScreenContent => (ad) {
        PlayControlManager.instance.pause();
        _callback();
      };

  @override
  GenericAdEventCallback? get onAdDismissedFullScreenContent => (ad) async {
        PlayControlManager.instance.play();
        await ad.dispose();
        await TvInterstitialAd.instance.load();
        // _callback();
      };

  @override
  void Function(dynamic ad, AdError error)? get onAdFailedToShowFullScreenContent => (ad, error) async {
        PlayControlManager.instance.play();
        ad.dispose();
        await TvInterstitialAd.instance.load();
        _callback();
      };
}
