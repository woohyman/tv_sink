import 'package:flutter/material.dart';

import '../pages/AppSettingRoute.dart';
import '../pages/DefaultUrlListRoute.dart';
import '../pages/HistoryRoute.dart';
import '../pages/ParseUrlListRoute.dart';
import '../pages/PlayOnlineVideoRoute.dart';
import '../pages/ScaffoldRoute.dart';
import '../pages/SettingRoute.dart';

class RouterTable {
  static const String settingPath = 'profile_setting';
  static const String historyPath = 'history_setting';
  static const String homePath = 'player_setting';
  static const String appSettingPath = 'setting_setting';
  static const String parseUrlListRoute = 'parseUrl_list_route';
  static const String defaultUrlListRoute = 'default_url_listRoute';
  static const String playOnlineVideoRoute = 'play_online_videoRoute';

  static Map<String, WidgetBuilder> routeTables = {
    settingPath: (context) => const SettingRoute(),
    historyPath: (context) => const HistoryRoute(),
    homePath: (context) => const ScaffoldRoute(),
    appSettingPath: (context) => const AppSettingRoute(),
    parseUrlListRoute: (context) => const ParseUrlListRoute(),
    defaultUrlListRoute: (context) => const DefaultUrlListRoute(),
    playOnlineVideoRoute: (context) => const PlayOnlineVideoRoute(),
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
