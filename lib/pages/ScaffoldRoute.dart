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

ItemScrollController _chineseController = ItemScrollController();
ItemScrollController _foreignController = ItemScrollController();

ItemScrollController? getScrollController(int _index) {
  if (_index == 0) {
    return _chineseController.isAttached ? null : _chineseController;
  } else if (_index == 1) {
    return _foreignController.isAttached ? null : _foreignController;
  } else {
    return null;
  }
}

ItemScrollController? getScrollController2(int _index) {
  if (_index == 0) {
    return _chineseController.isAttached ? _chineseController : null;
  } else if (_index == 1) {
    return _foreignController.isAttached ? _foreignController : null;
  } else {
    return null;
  }
}

class _ScaffoldRouteState extends State<ScaffoldRoute> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(0);
  PageController? _pageController;
  late FlutterBuglyManager _flutterBuglyManager;

  final TvBannerAd myBanner = TvBannerAd();
  int _optType = 0;

  @override
  void initState() {
    super.initState();
    PlayControlManager.instance.setPlayStateListener((int optType) => {
          setState(() => {
                _optType = optType,
              })
        });

    FlutterNativeSplash.remove();
    _flutterBuglyManager = FlutterBuglyManager(context);
    _flutterBuglyManager.init().then((value) => {setState(() {})});

    _pageController = PageController();
    myBanner.load().then((value) => {setState(() => {})});
  }

  @override
  Widget build(BuildContext context) {
    CommonData commonData = Provider.of<CommonData>(context, listen: true);
    Position _position = commonData.getPositionByName();

    logger.e("====> build ==== ${commonData.getTvName()}");
    try {
      if (_optType < 0) {
        _selectedIndex.value = _position.tabIndex;
        _pageController?.jumpToPage(_position.tabIndex);
        getScrollController2(_position.tabIndex)?.jumpTo(index: _position.listIndex);
      }
    } catch (err, stack) {
      logger.e("_position ==>$err : $stack");
    }

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
                children: <Widget>[
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
              onTap: (index) {
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
