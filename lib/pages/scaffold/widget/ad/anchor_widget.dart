import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:tv_sink/domain/data_provider/user_data_provider.dart';

import 'logic.dart';

class AnchorWidget extends GetView<AdLogic> {
  const AnchorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.loadAnchorAd(context),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Container();
          }
        } else {
          return Container();
        }

        final _bannerAd = snapshot.data!;
        return Obx(() {
          return Visibility(
            visible: !UserDataProvider.fromGet().isVip,
            child: Container(
              color: Colors.green,
              width: _bannerAd.size.width.toDouble(),
              height: _bannerAd.size.height.toDouble(),
              child: AdWidget(ad: _bannerAd),
            ),
          );
        });
      },
    );
  }
}
