import 'package:flutter/material.dart';
import 'play/play_manager.dart';
import 'data_provider/app_set_data_provider.dart';
import 'ad/ad_manager.dart';

//开屏广告
class AppLifecycleReactor extends WidgetsBindingObserver {
  bool _isPaused = false;
  final adManager = AdManager.fromGet();

  AppLifecycleReactor();

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    if (state == AppLifecycleState.paused) {
      _isPaused = true;
    }

    if (state == AppLifecycleState.resumed && _isPaused) {
      _isPaused = false;
      adManager.showOpenAd();
    }

    if (state == AppLifecycleState.paused) {
      if (!AppSetDataProvider.fromGet().enableBackgroundPlay) {
        PlayManager.fromGet().pause();
      }
    }
  }
}
