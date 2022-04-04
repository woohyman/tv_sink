import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:io' show Platform;

import '../util/log.dart';

class AppOpenAdManager {

  String adUnitId = Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/3419835294'
      : 'ca-app-pub-3940256099942544/5662855259';

  AppOpenAd? _appOpenAd;
  bool _isShowingAd = false;

  /// Whether an ad is available to be shown.
  bool get isAdAvailable {
    return _appOpenAd != null;
  }

  /// Load an [AppOpenAd].
  void loadAd() {
    AppOpenAd.load(
      adUnitId: adUnitId,
      orientation: AppOpenAd.orientationPortrait,
      request: AdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(
        onAdLoaded: (ad) {
          _appOpenAd = ad;
          logger.e('onAdLoaded to load: $isAdAvailable');
        },
        onAdFailedToLoad: (error) {
          logger.e('AppOpenAd failed to load: $error');
          // Handle the error.
        },
      ),
    );
  }

  void showAdIfAvailable() {
    if (!isAdAvailable) {
      logger.e('Tried to show ad before available.');
      loadAd();
      return;
    }
    if (_isShowingAd) {
      logger.e('Tried to show ad while already showing an ad.');
      return;
    }

    logger.e('现实全屏广告.');

    // Set the fullScreenContentCallback and show the ad.
    _appOpenAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (ad) {
        _isShowingAd = true;
        logger.e('$ad onAdShowedFullScreenContent');
      },
      onAdFailedToShowFullScreenContent: (ad, error) {
        logger.e('$ad onAdFailedToShowFullScreenContent: $error');
        _isShowingAd = false;
        ad.dispose();
        _appOpenAd = null;
      },
      onAdDismissedFullScreenContent: (ad) {
        logger.e('$ad onAdDismissedFullScreenContent');
        _isShowingAd = false;
        ad.dispose();
        _appOpenAd = null;
        loadAd();
      },
    );
  }
}