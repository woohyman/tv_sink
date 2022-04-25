import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:tvSink/util/log.dart';

import '../ad/AppLifecycleReactor.dart';
import '../ad/AppOpenAdManager.dart';
import '../ad/TvBannerAd.dart';
import '../business/EventBus.dart';
import '../business/PlayControlManager.dart';
import '../model/bean/TvResource.dart';
import '../update/FlutterBuglyManager.dart';
import '../util/const.dart';
import '../util/log.dart';
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
  final TvBannerAd myBanner = TvBannerAd();
  Widget? _adBannerWidget;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    myBanner.getBannerWidgetWithAdapter(context).then((value) {
      setState(() {
        _adBannerWidget = value;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    myBanner.load();

    AppOpenAdManager appOpenAdManager = AppOpenAdManager()..loadAd();
    WidgetsBinding.instance!.addObserver(AppLifecycleReactor(appOpenAdManager: appOpenAdManager));

    FlutterNativeSplash.remove();
    _flutterBuglyManager = FlutterBuglyManager(context);
    _flutterBuglyManager.init().then((value) => {setState(() {})});

    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    bus.on(keySelectState, (arg) {
      List<String> _list = arg as List<String>;
      if (_list.contains(tabSelect)) {
        _onItemTapped(position.tabIndex, context);
      }
    });

    return Scaffold(
        appBar: AppBar(
          title: const Text("电视汇"),
        ),
        drawer: SliderLeft(),
        body: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            PlayerWrapper(),
            Visibility(
              visible: _adBannerWidget != null,
              child: myBanner.getBannerWidget(),
            ),
            Expanded(
              flex: 1,
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  _onItemTapped(index, context);
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
                _onItemTapped(index, context);
              },
            );
          },
          valueListenable: _selectedIndex,
        ));
  }

  void _onItemTapped(int index, BuildContext context) {
    _pageController?.jumpToPage(index);
    _selectedIndex.value = index;
  }
}
