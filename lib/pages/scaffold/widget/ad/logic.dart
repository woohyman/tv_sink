import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../../domain/ad/ad_manager.dart';

class AdLogic extends GetxController {
  final _adManager = AdManager.fromGet();

  Future<BannerAd> loadAnchorAd(BuildContext context) {
    return _adManager.loadAnchorAd(context);
  }

  Future<BannerAd> loadInlineAd(BuildContext context) {
    return _adManager.loadInlineAd(context);
  }
}
