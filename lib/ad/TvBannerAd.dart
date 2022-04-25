import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class TvBannerAd extends BannerAd {
  TvBannerAd()
      : super(size: AdSize.fullBanner, adUnitId: 'ca-app-pub-3940256099942544/6300978111', listener: TvBannerAdListener(), request: TvAdRequest());

  Future<Widget> getBannerWidgetWithAdapter(BuildContext context) async {
    AdSize? _size = await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(MediaQuery.of(context).size.width.truncate());
    return SizedBox(
      child: AdWidget(
        ad: this,
      ),
      width: _size?.width.toDouble(),
      height: _size?.height.toDouble(),
    );
  }

  Widget getBannerWidget() {
    return SizedBox(
      child: AdWidget(
        ad: this,
      ),
      width: size.width.toDouble(),
      height: size.height.toDouble(),
    );
  }
}

class TvAdSize extends AdSize {
  TvAdSize({required int width, required int height}) : super(width: width, height: height);
}

class TvBannerAdListener extends BannerAdListener {}

class TvAdRequest extends AdRequest {}
