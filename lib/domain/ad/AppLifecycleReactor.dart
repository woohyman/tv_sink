import 'package:flutter/material.dart';
import 'package:tv_sink/util/log.dart';
import '../PlayController.dart';
import '../data_provider/AppSetDataProvider.dart';
import 'AppOpenAdManager.dart';

//开屏广告
class AppLifecycleReactor extends WidgetsBindingObserver {
  final AppOpenAdManager appOpenAdManager;
  AppLifecycleState? _preState;
  final _appSetDataProvider = AppSetDataProvider.fromGet();

  AppLifecycleReactor({required this.appOpenAdManager});

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    // Try to show an app open ad if the app is being resumed and
    // we're not already showing an app open ad.
    if (state == AppLifecycleState.resumed &&
        _preState == AppLifecycleState.paused) {
      appOpenAdManager.showAdIfAvailable();
    }

    if (state == AppLifecycleState.paused) {
      if (!_appSetDataProvider.enableBackgroundPlay) {
        PlayController.instance.pause();
      }
    }
    _preState = state;
  }
}
