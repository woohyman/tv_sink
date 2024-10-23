import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_update_dialog/update_dialog.dart';
import 'package:tv_sink/widgets/list/FavoriteChannelsList.dart';
import 'package:tv_sink/widgets/list/FeaturedChannelsList.dart';
import 'package:tv_sink/widgets/list/OptionalChannelsList.dart';

import '../domain/PlaylistStateManager.dart';
import '../domain/ad/AppLifecycleReactor.dart';
import '../domain/ad/AppOpenAdManager.dart';
import '../domain/ad/banner/AnchorAdapter.dart';
import '../domain/upgrade/ApkVersionController.dart';
import '../domain/upgrade/UpdateController.dart';
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
  final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(0);
  PageController? _pageController;
  final AnchorAdapter _anchorAdapter = AnchorAdapter();
  final _updateController = UpdateController();
  final _apkVersionController = ApkVersionController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _anchorAdapter.loadAd(context, () => setState(() => {}));
  }

  @override
  void initState() {
    super.initState();

    _updateController.fetchApkVersion().then((value) {
      _apkVersionController.fetchApkVersion().then((value){
        if(_updateController.versionCode >
            _apkVersionController.versionCode){
          defaultStyle();
        }
      });
    });

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

    AppOpenAdManager appOpenAdManager = AppOpenAdManager()..loadAd();
    WidgetsBinding.instance
        .addObserver(AppLifecycleReactor(appOpenAdManager: appOpenAdManager));

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
    _pageController?.jumpToPage(index);
    _selectedIndex.value = index;
  }

  UpdateDialog? dialog;
  double progress = 0.0;

  void defaultStyle() {
    if (dialog != null && dialog!.isShowing()) {
      return;
    }
    dialog = UpdateDialog.showUpdate(context,
        isForce: false,
        title: '是否升级到版本${_updateController.versionName}?',
        updateContent: '',
        onUpdate: () => _updateController.launchUpdateUrlDialog(dialog));
  }
}
