import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:tvSink/util/log.dart';

class AnchorAdapter {
  BannerAd? _anchoredAdaptiveAd;
  bool _isLoaded = false;

  Future<void> loadAd(BuildContext context, Function function) async {
    // Get an AnchoredAdaptiveBannerAdSize before loading the ad.
    final AnchoredAdaptiveBannerAdSize? size =
        await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(MediaQuery.of(context).size.width.truncate());

    if (size == null) {
      logger.e('Unable to get height of anchored banner.');
      return;
    }

    _anchoredAdaptiveAd = BannerAd(
      // TODO: replace these test ad units with your own ad unit.
      adUnitId: 'ca-app-pub-3940256099942544/6300978111',
      size: size,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (Ad ad) {
          logger.i('$ad loaded: ${ad.responseInfo}');
          // When the ad is loaded, get the ad size and use it to set
          // the height of the ad container.
          _anchoredAdaptiveAd = ad as BannerAd;
          _isLoaded = true;
          function();
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          logger.e('Anchored adaptive banner failedToLoad: $error');
          ad.dispose();
        },
      ),
    );
    return _anchoredAdaptiveAd!.load();
  }

  void dispose() {
    _anchoredAdaptiveAd?.dispose();
  }

  Widget getWidget() {
    logger.e("ssss == getWidget ==");
    if (_anchoredAdaptiveAd != null && _isLoaded) {
      return Container(
        color: Colors.green,
        width: _anchoredAdaptiveAd?.size.width.toDouble(),
        height: _anchoredAdaptiveAd?.size.height.toDouble(),
        child: AdWidget(ad: _anchoredAdaptiveAd!),
      );
    } else {
      return const SizedBox(height: 0.0, width: 0.0);
    }
  }
}
