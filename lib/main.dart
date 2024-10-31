import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:tv_sink/pages/init_binding.dart';
import 'package:tv_sink/pages/scaffold/view.dart';
import 'package:tv_sink/routes/router_table.dart';
import 'package:video_player_media_kit/video_player_media_kit.dart';
import 'domain/app_lifecycle_reactor.dart';

Future<void> main() async {
  // 如果需要 ensureInitialized，请在这里运行。
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  WidgetsBinding.instance.addObserver(AppLifecycleReactor());
  MobileAds.instance.initialize();

  VideoPlayerMediaKit.ensureInitialized(
    macOS: true,
    web: true,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: RouterTable.routes,
      title: '电视汇',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ScaffoldRoute(),
      builder: EasyLoading.init(),
      initialBinding: InitBinding(),
    );
  }
}
