import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:supabase/supabase.dart';
import 'package:tv_sink/domain/upgrade/UpgradeDataProvider.dart';
import 'package:tv_sink/routes/RouterTable.dart';
import 'package:tv_sink/util/const.dart';
import 'package:video_player_media_kit/video_player_media_kit.dart';
import 'domain/WifiManager.dart';
import 'domain/ad/TvInterstitialAd.dart';
import 'domain/data_provider/PlayDataProvider.dart';
import 'domain/upgrade/UpgradeController.dart';
import 'domain/data_provider/WatchListsController.dart';
import 'pages/ScaffoldRoute.dart';

Future<void> main() async {
  // 如果需要 ensureInitialized，请在这里运行。
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  WifiManager.instance.init();
  MobileAds.instance.initialize();
  TvInterstitialAd.instance.load();

  VideoPlayerMediaKit.ensureInitialized(
    macOS: true,
    web: true,
  );

  final supabase = SupabaseClient(supabaseUrl, supabaseKey);
  Get.put(supabase);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(WatchListsController());
    Get.put(CollectionListsController());
    Get.put(PlayDataProvider());
    Get.put(UpgradeDataProvider.preFetchData());
    Get.put(RemoteM3uListController());

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouterTable.onGenerateRoute,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ScaffoldRoute(),
      builder: EasyLoading.init(),
    );
  }
}
