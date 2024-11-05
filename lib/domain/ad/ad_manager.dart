import 'dart:async';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:tv_sink/domain/ad/app_open_ad_manager.dart';
import '../../util/const.dart';
import '../data_provider/user_data_provider.dart';
import 'tv_interstitial_ad_manager.dart';

class AdManager {
  final interstitialAd = TvInterstitialAdManager();
  final appOpenAd = AppOpenAdManager();

  UserDataProvider get provider {
    return UserDataProvider.fromGet();
  }

  //展示开机广告
  void showOpenAd() {
    if (provider.isVip) {
      return;
    }
    appOpenAd.show();
  }

  //展示插屏广告
  Future<void> showInterstitialAd() async {
    if (provider.isVip) {
      return;
    }
    if (Random().nextInt(50) == 3) {
      await interstitialAd.show();
    }
  }

  static AdManager? fromGet() {
    try {
      return Get.find<AdManager>();
    } catch (_) {
      return null;
    }
  }

  AdManager() {
    if (provider.isVip) {
      return;
    }
    MobileAds.instance.initialize();
    interstitialAd.init();
    appOpenAd.init();
  }

  //加载列表的嵌入广告
  Future<BannerAd> loadAnchorAd(BuildContext context) {
    Completer<BannerAd> completer = Completer();
    if (provider.isVip) {
      completer.completeError("");
      return completer.future;
    }
    int width = MediaQuery.of(context).size.width.truncate();
    AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(width)
        .then((size) {
      if (size == null) {
        completer.completeError("size为空");
      } else {
        _loadAd(context, size).then((value) {
          completer.complete(value);
        }).catchError((error) {
          completer.completeError(error);
        });
      }
    }).catchError((error) {
      completer.completeError(error);
    });

    return completer.future;
  }

  //加载左侧的嵌入广告
  Future<BannerAd> loadInlineAd(BuildContext context) {
    if (provider.isVip) {
      Completer<BannerAd> completer = Completer();
      completer.completeError("");
      return completer.future;
    }
    double _adWidth = MediaQuery.of(context).size.width * 0.7;
    AdSize size = AdSize.getCurrentOrientationInlineAdaptiveBannerAdSize(
        _adWidth.truncate());

    _loadAd(context, size).then((ad) {});
    return _loadAd(context, size);
  }

  Future<BannerAd> _loadAd(BuildContext context, AdSize size) {
    Completer<BannerAd> completer = Completer();

    BannerAd(
      adUnitId: bannerAdUnitId,
      size: size,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (Ad ad) async {
          completer.complete(ad as BannerAd);
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          completer.completeError(error);
          ad.dispose();
        },
      ),
    ).load();

    return completer.future;
  }
}
