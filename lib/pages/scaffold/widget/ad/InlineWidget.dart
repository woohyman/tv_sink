import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../../../domain/data_provider/UserDataProvider.dart';
import 'logic.dart';

class InlineWidget extends GetView<AdLogic> {
  const InlineWidget({super.key});

  final _insets = 16.0;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.loadInlineAd(context),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Container();
          }
        } else {
          return Container();
        }

        final _bannerAd = snapshot.data!;
        return FutureBuilder(
          future: _bannerAd.getPlatformAdSize(),
          builder: (context, snapshot) {
            return Obx(() {
              return Visibility(
                visible: !UserDataProvider.fromGet().isVip.value,
                child: Align(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - (2 * _insets),
                    height: snapshot.data?.height.toDouble(),
                    child: AdWidget(ad: _bannerAd),
                  ),
                ),
              );
            });
          },
        );
      },
    );
  }
}
