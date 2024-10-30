
import 'package:flutter/material.dart';
import '../play/play_manager.dart';
import '../data_provider/AppSetDataProvider.dart';
import 'ad_manager.dart';

//开屏广告
class AppLifecycleReactor extends WidgetsBindingObserver {
  bool _isPaused = false;

  AppLifecycleReactor();

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {

    if (state == AppLifecycleState.paused) {
      _isPaused = true;
    }

    if (state == AppLifecycleState.resumed && _isPaused) {
      _isPaused = false;
      AdManager().showOpenAd();
    }

    if (state == AppLifecycleState.paused) {
      if (!AppSetDataProvider.fromGet().enableBackgroundPlay) {
        PlayManager.instant.pause();
      }
    }
  }
}
