import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:supabase/supabase.dart';
import 'package:tv_sink/domain/ad/AdController.dart';
import 'package:tv_sink/domain/data_provider/UserDataProvider.dart';
import 'package:tv_sink/domain/upgrade/UpgradeDataProvider.dart';
import 'package:tv_sink/routes/RouterTable.dart';
import 'package:tv_sink/util/const.dart';
import 'package:video_player_media_kit/video_player_media_kit.dart';
import 'domain/AppSetController.dart';
import 'domain/ad/AppLifecycleReactor.dart';
import 'domain/ad/AppOpenAdManager.dart';
import 'domain/ad/TvInterstitialAdManager.dart';
import 'domain/data_provider/AppSetDataProvider.dart';
import 'domain/data_provider/PlayDataProvider.dart';
import 'domain/data_provider/WatchListsDataProvider.dart';
import 'domain/upgrade/UpgradeController.dart';
import 'pages/ScaffoldRoute.dart';

Future<void> main() async {
  Get.put(WatchListsDataProvider());
  Get.put(CollectionListsDataProvider());
  Get.put(PlayDataProvider());
  Get.put(UpgradeDataProvider.preFetchData());
  Get.put(AppSetDataProvider.preFetchData());
  Get.put(UserDataProvider());
  Get.put(UpgradeController());

  // 如果需要 ensureInitialized，请在这里运行。
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  AppSetController.instance.init();
  MobileAds.instance.initialize();

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
