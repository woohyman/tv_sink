import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:tv_sink/pages/parse_m3u/binding.dart';
import '../pages/app_setting/binding.dart';
import '../pages/app_setting/view.dart';
import '../pages/default_url_list/view.dart';
import '../pages/default_url_list/binding.dart';
import '../pages/history_list/binding.dart';
import '../pages/history_list/view.dart';
import '../pages/play_online_video/view.dart';
import '../pages/parse_m3u/view.dart';
import '../pages/scaffold/view.dart';

class RouterTable {
  static const String historyPath = '/history_setting';
  static const String homePath = '/player_setting';
  static const String appSettingPath = '/setting_setting';
  static const String parseUrlListRoute = '/parseUrl_list_route';
  static const String defaultUrlListRoute = '/default_url_listRoute';
  static const String playOnlineVideoRoute = '/play_online_videoRoute';

  static List<GetPage> routes = [
    GetPage(
        name: historyPath,
        page: () => const HistoryRoute(),
        binding: HistoryListBinding()),
    GetPage(name: homePath, page: () => const ScaffoldRoute()),
    GetPage(
        name: appSettingPath,
        page: () => const AppSettingRoute(),
        binding: AppSettingBinding()),
    GetPage(
        name: parseUrlListRoute,
        page: () => const ParseUrlListRoute(),
        binding: ParseM3uBinding()),
    GetPage(
        name: defaultUrlListRoute,
        page: () => const DefaultUrlListRoute(),
        binding: DefaultUrlListBinding()),
    GetPage(
        name: playOnlineVideoRoute, page: () => const PlayOnlineVideoRoute()),
  ];
}
