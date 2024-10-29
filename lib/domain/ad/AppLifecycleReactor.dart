import 'package:flutter/material.dart';
import 'package:tv_sink/util/log.dart';
import '../PlayController.dart';
import '../data_provider/AppSetDataProvider.dart';
import 'AdController.dart';
import 'AppOpenAdManager.dart';

//开屏广告
class AppLifecycleReactor extends WidgetsBindingObserver {
  final AdController controller;
  final _appSetDataProvider = AppSetDataProvider.fromGet();
  bool _isPaused = false;

  AppLifecycleReactor({required this.controller});

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {

    if (state == AppLifecycleState.paused) {
      _isPaused = true;
    }

    if (state == AppLifecycleState.resumed && _isPaused) {
      _isPaused = false;
      controller.showOpenAd();
    }

    if (state == AppLifecycleState.paused) {
      if (!_appSetDataProvider.enableBackgroundPlay) {
        PlayController.instance.pause();
      }
    }
  }
}
