import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../ad/AppLifecycleReactor.dart';
import '../ad/AppOpenAdManager.dart';
import '../ad/banner/AnchorAdapter.dart';
import '../business/EventBus.dart';
import '../business/PlaylistStateManager.dart';
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
  final AnchorAdapter _anchorAdapter = AnchorAdapter();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _anchorAdapter.loadAd(context, () => setState(() => {}));
  }

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();

    bus.on(keySelectState, (arg) {
      List<String> _list = arg as List<String>;
      if (_list.contains(tabSelect)) {
        _onItemTapped(PlaylistStateManager.instance.position.tabIndex);
      }
    });

    AppOpenAdManager appOpenAdManager = AppOpenAdManager()..loadAd();
    WidgetsBinding.instance!.addObserver(AppLifecycleReactor(appOpenAdManager: appOpenAdManager));

    _flutterBuglyManager = FlutterBuglyManager();
    _flutterBuglyManager.init(context).then((value) => setState(() => {}));

    _pageController = PageController();
  }

  @override
  void dispose() {
    _anchorAdapter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("电视汇"),
        ),
        drawer: const SliderLeft(),
        body: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            PlayerWrapper(),
            _anchorAdapter.getWidget(),
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
