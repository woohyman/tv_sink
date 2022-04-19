import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tvSink/pages/HistoryRoute.dart';

import '../pages/AppSettingRoute.dart';
import '../pages/ScaffoldRoute.dart';
import '../pages/SettingRoute.dart';

class RouterTable {
  static const String settingPath = 'profile_setting';
  static const String historyPath = 'history_setting';
  static const String homePath = 'player_setting';
  static const String appSettingPath = 'setting_setting';

  static Map<String, WidgetBuilder> routeTables = {
    settingPath: (context) => const SettingRoute(),
    historyPath: (context) => HistoryRoute(),
    homePath: (context) => const ScaffoldRoute(),
    appSettingPath: (context) => const AppSettingRoute(),
  };

  //路由拦截
  static Route onGenerateRoute<T extends Object>(RouteSettings settings) {
    return MaterialPageRoute<T>(
      settings: settings,
      builder: (context) {
        String? name = settings.name;
        try {

          Widget widget = routeTables[name]!(context);
          return widget;
        } catch (e) {
          return const SettingRoute();
        }
      },
    );
  }
}
