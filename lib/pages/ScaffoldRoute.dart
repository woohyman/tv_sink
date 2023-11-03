import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:video_player/video_player.dart';

import '../domain/PlayControlManager.dart';
import '../domain/PlaylistStateManager.dart';
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

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();

    eventBus.on<MapEntry<String, dynamic>>().listen((event) {
      switch (event.key) {
        case keySelectState:
          List<String> _list = event.value as List<String>;
          if (_list.contains(tabSelect)) {
            _onItemTapped(PlaylistStateManager.instance.position.tabIndex);
          }
          break;
      }
    });

    // AppOpenAdManager appOpenAdManager = AppOpenAdManager()..loadAd();
    // WidgetsBinding.instance!.addObserver(AppLifecycleReactor(appOpenAdManager: appOpenAdManager));

    _flutterBuglyManager = FlutterBuglyManager();
    _flutterBuglyManager.init(context).then((value) => setState(() => {}));

    _pageController = PageController();
  }

  @override
  void dispose() {
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
            const PlayerWrapper(),
            // Container(
            //   height: 250,
            //   padding: const EdgeInsets.all(20),
            //   child: AspectRatio(
            //     aspectRatio: PlayControlManager.instance.controller.value.aspectRatio,
            //     child: Stack(
            //       alignment: Alignment.bottomCenter,
            //       children: <Widget>[
            //         VideoPlayer(PlayControlManager.instance.controller),
            //         ClosedCaption(text: PlayControlManager.instance.controller.value.caption.text),
            //         VideoProgressIndicator(PlayControlManager.instance.controller, allowScrubbing: true),
            //       ],
            //     ),
            //   ),
            // ),
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
