import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../domain/ad/AdController.dart';
import '../../domain/data_provider/UserDataProvider.dart';

class InlineWidget extends StatefulWidget {
  const InlineWidget({super.key});

  @override
  State<InlineWidget> createState() => _InlineWidgetState();
}

class _InlineWidgetState extends State<InlineWidget> {
  static const _insets = 16.0;
  final _adController = AdController.fromGet();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _adController.loadInlineAd(context),
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
