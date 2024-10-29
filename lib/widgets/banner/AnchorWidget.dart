import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:tv_sink/domain/ad/AdController.dart';
import 'package:tv_sink/domain/data_provider/UserDataProvider.dart';

class AnchorWidget extends StatefulWidget {
  const AnchorWidget({super.key});

  @override
  State<AnchorWidget> createState() => _AnchorWidgetState();
}

class _AnchorWidgetState extends State<AnchorWidget> {
  final controller = AdController.fromGet();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
            visible: !UserDataProvider.fromGet().isVip.value,
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
