import 'package:flutter/cupertino.dart';
import 'package:tvSink/pages/HistoryRoute.dart';

import '../pages/SettingRoute.dart';
import '../widgets/PlayerWrapper.dart';
import '../widgets/PlayerWrapper1.dart';

class RouterTable {
  static const String settingPath = 'profile_setting';
  static const String historyPath = 'history_setting';
  static const String playerPath = 'player_setting';

  static Map<String, WidgetBuilder> routeTables = {
    settingPath: (context) => const SettingRoute(),
    historyPath: (context) => HistoryRoute(),
    playerPath: (context) => PlayerWrapper1(),
  };

  //路由拦截
  static Route onGenerateRoute<T extends Object>(RouteSettings settings) {
    return CupertinoPageRoute<T>(
      settings: settings,
      builder: (context) {
        String? name = settings.name;
        try{
          Widget widget = routeTables[name]!(context);
          return widget;
        }catch(e){
          return const SettingRoute();
        }
      },
    );
  }
}
