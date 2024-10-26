import 'package:flutter/material.dart';

import '../PlayController.dart';
import 'AppOpenAdManager.dart';

class AppLifecycleReactor extends WidgetsBindingObserver {
  final AppOpenAdManager appOpenAdManager;
  AppLifecycleState? _preState;

  AppLifecycleReactor({required this.appOpenAdManager});

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    // Try to show an app open ad if the app is being resumed and
    // we're not already showing an app open ad.
    if (state == AppLifecycleState.resumed && _preState == AppLifecycleState.paused) {
      appOpenAdManager.showAdIfAvailable();
    }
    if(state == AppLifecycleState.paused){
      PlayController.instance.pause();
    }
    _preState = state;
  }
}
