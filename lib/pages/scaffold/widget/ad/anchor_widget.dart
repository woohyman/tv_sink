import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../../base/base_future_builder.dart';
import '../../../../domain/data_provider/user_data_provider.dart';
import 'logic.dart';

class AnchorWidget extends GetView<AdLogic> {
  const AnchorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseFutureBuilder(
      hideWhenLoadError: true,
      future: controller.loadAnchorAd(context),
      builder: (data, update) {
        return Visibility(
          visible: !UserDataProvider.fromGet().isVip,
          child: Container(
            color: Colors.green,
            width: data.size.width.toDouble(),
            height: data.size.height.toDouble(),
            child: AdWidget(ad: data),
          ),
        );
      },
    );
  }
}
