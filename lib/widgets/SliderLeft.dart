import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tvSink/ad/TvBannerAd.dart';

import '../routes/RouterTable.dart';

class SliderLeft extends StatefulWidget {
  SliderLeft({
    Key? key,
  }) : super(key: key);

  @override
  State<SliderLeft> createState() => _SliderLeftState();
}

class _SliderLeftState extends State<SliderLeft> {
  final TvBannerAd myBanner = TvBannerAd();

  @override
  void initState() {
    myBanner.load().then((value) => {setState(() => {})});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('应用设置'),
                      onTap: () => Navigator.of(context)
                          .pushNamed(RouterTable.appSettingPath),
                    ),
                    ListTile(
                      onTap: () => {
                        Navigator.of(context)
                            .popAndPushNamed(RouterTable.historyPath),

                      },
                      leading: Icon(Icons.history),
                      title: Text('观看历史'),
                    ),
                    ListTile(
                      onTap: () => {
                        Share.share('check out my website https://example.com',
                            subject: 'Look what I made!')
                      },
                      leading: Icon(Icons.share),
                      title: Text('分享App'),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: myBanner.getBannerWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
