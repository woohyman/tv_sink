import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:tvSink/util/log.dart';

class InlineAdapter {
  bool _isLoaded = false;
  AdSize? _adSize;
  late Orientation _currentOrientation;
  static const _insets = 16.0;
  BannerAd? _inlineAdaptiveAd;

  void dispose() {
    _inlineAdaptiveAd?.dispose();
  }

  void loadAd(BuildContext context, Function function) async {
    _currentOrientation = MediaQuery.of(context).orientation;
    await _inlineAdaptiveAd?.dispose();
    _inlineAdaptiveAd = null;
    _isLoaded = false;
    function();

    // Get an inline adaptive size for the current orientation.
    // AdSize size = AdSize.getCurrentOrientationInlineAdaptiveBannerAdSize(_adWidth.truncate());
    double _adWidth = MediaQuery.of(context).size.width*0.7;
    AdSize size = AdSize.getCurrentOrientationInlineAdaptiveBannerAdSize(_adWidth.truncate());

    _inlineAdaptiveAd = BannerAd(
      // TODO: replace this test ad unit with your own ad unit.
      adUnitId: 'ca-app-pub-3940256099942544/6300978111',
      size: size,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (Ad ad) async {
          logger.i('Inline adaptive banner loaded: ${ad.responseInfo}');

          // After the ad is loaded, get the platform ad size and use it to
          // update the height of the container. This is necessary because the
          // height can change after the ad is loaded.
          BannerAd bannerAd = (ad as BannerAd);
          final AdSize? size = await bannerAd.getPlatformAdSize();
          if (size == null) {
            logger.e('Error: getPlatformAdSize() returned null for $bannerAd');
            return;
          }

          _inlineAdaptiveAd = bannerAd;
          _isLoaded = true;
          _adSize = size;
          function();
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          logger.e('Inline adaptive banner failedToLoad: $error');
          ad.dispose();
        },
      ),
    );
    await _inlineAdaptiveAd!.load();
  }

  /// Gets a widget containing the ad, if one is loaded.
  ///
  /// Returns an empty container if no ad is loaded, or the orientation
  /// has changed. Also loads a new ad if the orientation changes.
  Widget getAdWidget(Function function) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (_currentOrientation == orientation && _inlineAdaptiveAd != null && _isLoaded && _adSize != null) {
          return Align(
              child: SizedBox(
            width: MediaQuery.of(context).size.width - (2 * _insets),
            height: _adSize!.height.toDouble(),
            child: AdWidget(
              ad: _inlineAdaptiveAd!,
            ),
          ));
        }
        // Reload the ad if the orientation changes.
        if (_currentOrientation != orientation) {
          _currentOrientation = orientation;
          loadAd(context, function);
        }
        return Container();
      },
    );
  }
}
