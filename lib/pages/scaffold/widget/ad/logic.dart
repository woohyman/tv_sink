import 'package:flutter/cupertino.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:tv_sink/base/base_future_controller.dart';

import '../../../../domain/ad/ad_manager.dart';

class AdLogic extends BaseFutureController {
  final _adManager = AdManager.fromGet();

  Future<BannerAd> loadAnchorAd(BuildContext context) {
    return _adManager.loadAnchorAd(context);
  }

  Future<BannerAd> loadInlineAd(BuildContext context) {
    return _adManager.loadInlineAd(context);
  }
}
