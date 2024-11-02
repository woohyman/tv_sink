import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:tv_sink/base/base_future_builder.dart';
import '../../../../domain/data_provider/user_data_provider.dart';
import 'logic.dart';

class InlineWidget extends GetView<AdLogic> {
  const InlineWidget({super.key});

  final _insets = 16.0;

  @override
  Widget build(BuildContext context) {
    return BaseFutureBuilder(
      hideWhenLoadError: true,
      future: controller.loadInlineAd(context),
      builder: (data, update) {
        return FutureBuilder(
          future: data.getPlatformAdSize(),
          builder: (context, snapshot) {
            return Visibility(
              visible: !UserDataProvider.fromGet().isVip,
              child: Align(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - (2 * _insets),
                  height: snapshot.data?.height.toDouble(),
                  child: AdWidget(ad: data),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
