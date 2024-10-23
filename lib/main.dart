import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:supabase/supabase.dart';
import 'package:tv_sink/routes/RouterTable.dart';
import 'package:video_player_media_kit/video_player_media_kit.dart';

import 'control/WatchListsController.dart';
import 'domain/WifiManager.dart';
import 'pages/ScaffoldRoute.dart';

Future<void> main() async {
  // 如果需要 ensureInitialized，请在这里运行。
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  WifiManager.instance.init();
  MobileAds.instance.initialize();

  VideoPlayerMediaKit.ensureInitialized(
    macOS: true,
    web: true,
  );

  const supabaseUrl = 'https://iozcbyxqcgvqiosrabsw.supabase.co';
  const supabaseKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlvemNieXhxY2d2cWlvc3JhYnN3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjg1ODMxMjEsImV4cCI6MjA0NDE1OTEyMX0.i-1uXxnpgkK1-x8iKUphr02d3PErWah4Sx93vlpwSl8';
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
    Get.put(PlayPositionController());

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
