import 'dart:async';
import 'package:google_mobile_ads/google_mobile_ads.dart';

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

    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3940256099942544/8691691433',
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            _interstitialAd = ad;
          },
          onAdFailedToLoad: (LoadAdError error) {
            PlayManager.fromGet().play();
          },
        ));
  }

  Future<bool> show() async {
    Completer<bool> completer = Completer();
    if (_interstitialAd != null) {
      _interstitialAd?.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (ad) {
          ad.dispose();
          _interstitialAd = null;
          _load();
          completer.complete(true);
        },
        onAdShowedFullScreenContent: (ad) {
          ad.dispose();
          _interstitialAd = null;
          PlayManager.fromGet().pause();
          _load();
        },
        onAdFailedToShowFullScreenContent: (ad, error) {
          completer.complete(true);
        },
      );
      _interstitialAd?.show();
    }else{
      _load();
      completer.complete(false);
    }
    return completer.future;
  }
}
