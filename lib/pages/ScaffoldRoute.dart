import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:tvSink/util/log.dart';

import '../ad/TvBannerAd.dart';
import '../business/PlayControlManager.dart';
import '../model/bean/TvResource.dart';
import '../update/FlutterBuglyManager.dart';
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

  @override
  void initState() {
    super.initState();

    FlutterNativeSplash.remove();
    _flutterBuglyManager = FlutterBuglyManager(context);
    _flutterBuglyManager.init().then((value) => {setState(() {})});

    _pageController = PageController();
    myBanner.load().then((value) => {setState(() => {})});
  }

  @override
  Widget build(BuildContext context) {
    Position _position = getPositionByName();

    return Scaffold(
        appBar: AppBar(
          title: myBanner.getBannerWidget(),
        ),
        drawer: SliderLeft(),
        body: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            PlayerWrapper(),
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
        bottomNavigationBar: Consumer<CommonData>(builder: (ctx, commonData, child) {
          _onItemTapped(commonData.position.tabIndex, context);
          return ValueListenableBuilder<int>(
            builder: (BuildContext context, int value, Widget? child) {
              return BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(icon: Icon(Icons.airplay), label: '中文频道'),
                  BottomNavigationBarItem(icon: Icon(Icons.airplay), label: '英文频道'),
                  BottomNavigationBarItem(icon: Icon(Icons.airplay), label: '收藏频道'),
                ],
                currentIndex: value,
                fixedColor: Colors.blue,
                onTap: (index) {
                  _onItemTapped(index, context);
                },
              );
            },
            valueListenable: _selectedIndex,
          );
        }));
  }

  void _onItemTapped(int index, BuildContext context) {
    _pageController?.jumpToPage(index);
    _selectedIndex.value = index;
  }
}
