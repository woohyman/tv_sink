import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tvSink/util/log.dart';
import '../business/AppLifecycleReactor.dart';
import '../business/AppOpenAdManager.dart';
import '../routes/RouterTable.dart';

class SliderLeft extends StatefulWidget {
  SliderLeft({
    Key? key,
  }) : super(key: key);

  @override
  State<SliderLeft> createState() => _SliderLeftState();
}

class _SliderLeftState extends State<SliderLeft> {
  final BannerAd myBanner = BannerAd(
    adUnitId: 'ca-app-pub-3940256099942544/6300978111',
    size: AdSize.largeBanner,
    request: AdRequest(),
    listener: BannerAdListener(),
  );

  @override
  void initState() {
    // AppOpenAdManager appOpenAdManager = AppOpenAdManager()..showAdIfAvailable();
    // WidgetsBinding.instance?.addObserver(AppLifecycleReactor(appOpenAdManager: appOpenAdManager));
    myBanner
        .load()
        .then((value) => {
              setState(() => {
                    logger.e("message ======>"),
                  })
            })
        .catchError((error) {
      logger.e("message $error");
    });
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
            // Padding(
            //     padding: const EdgeInsets.only(top: 38.0),
            //     child: InkWell(
            //       onTap: () =>
            //           Navigator.of(context).pushNamed(RouterTable.settingPath),
            //       child: Row(
            //         children: <Widget>[
            //           Padding(
            //             padding: const EdgeInsets.symmetric(horizontal: 16.0),
            //             child: ClipOval(
            //               child: Image.asset(
            //                 "images/icon_anonymous.png",
            //                 width: 80,
            //               ),
            //             ),
            //           ),
            //           const Text(
            //             "匿名用户",
            //             style: TextStyle(fontWeight: FontWeight.bold),
            //           )
            //         ],
            //       ),
            //     )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('应用设置'),
                      // onTap: () => Navigator.of(context)
                      //     .pushNamed(RouterTable.settingPath),
                    ),
                    ListTile(
                      onTap: () => {
                        Navigator.of(context)
                            .pushNamed(RouterTable.historyPath),
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
              child: AdWidget(
                ad: myBanner,
              ),
              width: myBanner.size.width.toDouble(),
              height: myBanner.size.height.toDouble(),
            ),
          ],
        ),
      ),
    );
  }
}
