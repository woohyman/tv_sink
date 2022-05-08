import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../ad/AppLifecycleReactor.dart';
import '../ad/AppOpenAdManager.dart';
import '../business/EventBus.dart';
import '../model/bean/TvResource.dart';
import '../update/FlutterBuglyManager.dart';
import '../util/const.dart';
import '../widgets/KeepAliveTest.dart';
import '../widgets/PlayerWrapper.dart';
import '../widgets/SliderLeft.dart';
import '../widgets/TvNameList.dart';

class ScaffoldRoute extends StatefulWidget {
  const ScaffoldRoute({Key? key}) : super(key: key);

  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<ScaffoldRoute> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(0);
  PageController? _pageController;
  late FlutterBuglyManager _flutterBuglyManager;

  BannerAd? _anchoredAdaptiveAd;
  bool _isLoaded = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _loadAd();
  }

  Future<void> _loadAd() async {
    // Get an AnchoredAdaptiveBannerAdSize before loading the ad.
    final AnchoredAdaptiveBannerAdSize? size =
        await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(MediaQuery.of(context).size.width.truncate());

    if (size == null) {
      print('Unable to get height of anchored banner.');
      return;
    }

    _anchoredAdaptiveAd = BannerAd(
      // TODO: replace these test ad units with your own ad unit.
      adUnitId: 'ca-app-pub-3940256099942544/6300978111',
      size: size,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (Ad ad) {
          print('$ad loaded: ${ad.responseInfo}');
          setState(() {
            // When the ad is loaded, get the ad size and use it to set
            // the height of the ad container.
            _anchoredAdaptiveAd = ad as BannerAd;
            _isLoaded = true;
          });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          print('Anchored adaptive banner failedToLoad: $error');
          ad.dispose();
        },
      ),
    );
    return _anchoredAdaptiveAd!.load();
  }

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();

    bus.on(keySelectState, (arg) {
      List<String> _list = arg as List<String>;
      if (_list.contains(tabSelect)) {
        _onItemTapped(position.tabIndex);
      }
    });

    AppOpenAdManager appOpenAdManager = AppOpenAdManager()..loadAd();
    WidgetsBinding.instance!.addObserver(AppLifecycleReactor(appOpenAdManager: appOpenAdManager));

    _flutterBuglyManager = FlutterBuglyManager();
    _flutterBuglyManager.init(context).then((value) => {setState(() {})});

    _pageController = PageController();
  }

  @override
  void dispose() {
    _anchoredAdaptiveAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("电视汇"),
        ),
        drawer: SliderLeft(),
        body: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            PlayerWrapper(),
            if (_anchoredAdaptiveAd != null && _isLoaded)
              Container(
                color: Colors.green,
                width: _anchoredAdaptiveAd!.size.width.toDouble(),
                height: _anchoredAdaptiveAd!.size.height.toDouble(),
                child: AdWidget(ad: _anchoredAdaptiveAd!),
              ),
            Expanded(
              flex: 1,
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  _onItemTapped(index);
                },
                children: const <Widget>[
                  KeepAliveWrapper(
                    child: TvNameList(0),
                    keepAlive: true,
                  ),
                  KeepAliveWrapper(
                    child: TvNameList(1),
                    keepAlive: true,
                  ),
                  KeepAliveWrapper(
                    child: TvNameList(2),
                    keepAlive: true,
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: ValueListenableBuilder<int>(
          builder: (BuildContext context, int value, Widget? child) {
            return BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.airplay), label: '中文频道'),
                BottomNavigationBarItem(icon: Icon(Icons.airplay), label: '英文频道'),
                BottomNavigationBarItem(icon: Icon(Icons.airplay), label: '收藏频道'),
              ],
              currentIndex: value,
              fixedColor: Colors.blue,
              onTap: (index) async {
                _onItemTapped(index);
              },
            );
          },
          valueListenable: _selectedIndex,
        ));
  }

  void _onItemTapped(int index) {
    _pageController?.jumpToPage(index);
    _selectedIndex.value = index;
  }
}
