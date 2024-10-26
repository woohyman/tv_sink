import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_update_dialog/update_dialog.dart';
import 'package:get/get.dart';
import 'package:tv_sink/widgets/list/FavoriteChannelsList.dart';
import 'package:tv_sink/widgets/list/FeaturedChannelsList.dart';
import 'package:tv_sink/widgets/list/OptionalChannelsList.dart';
import '../domain/PlaylistStateManager.dart';
import '../domain/ad/AppLifecycleReactor.dart';
import '../domain/ad/AppOpenAdManager.dart';
import '../domain/ad/banner/AnchorAdapter.dart';
import '../domain/data_provider/PlayDataProvider.dart';
import '../domain/upgrade/UpgradeController.dart';
import '../domain/upgrade/ApkVersionDataProvider.dart';
import '../data/net/UpgradeRepository.dart';
import '../util/const.dart';
import '../widgets/KeepAliveTest.dart';
import '../widgets/PlayerWrapper.dart';
import '../widgets/SliderLeft.dart';

class ScaffoldRoute extends StatefulWidget {
  const ScaffoldRoute({Key? key}) : super(key: key);

  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<ScaffoldRoute> {
  final _selectedIndex = ValueNotifier<int>(0);
  final _pageController = PageController();
  final _anchorAdapter = AnchorAdapter();
  final _upgradeController = UpgradeController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _anchorAdapter.loadAd(context, () => setState(() => {}));
  }

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();

    _upgradeController.showDialog(context);

    AppOpenAdManager appOpenAdManager = AppOpenAdManager()..loadAd();
    WidgetsBinding.instance
        .addObserver(AppLifecycleReactor(appOpenAdManager: appOpenAdManager));
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
          actions: [
            Obx(() {
              final tvName = PlayDataProvider.fromGet().tvInfo.value?.key;
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Visibility(
                  visible: tvName != null,
                  child: Text("正在播放:$tvName"),
                ),
              );
            })
          ],
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
                    child: FeaturedChannelsList(),
                    keepAlive: true,
                  ),
                  KeepAliveWrapper(
                    child: OptionalChannelsList(),
                    keepAlive: true,
                  ),
                  KeepAliveWrapper(
                    child: FavoriteChannelsList(),
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
                BottomNavigationBarItem(
                    icon: Icon(Icons.airplay), label: '精选频道'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.airplay), label: '自选频道'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.airplay), label: '收藏频道'),
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
    _pageController.jumpToPage(index);
    _selectedIndex.value = index;
  }
}
