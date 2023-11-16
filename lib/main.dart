import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bugly/flutter_bugly.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:tvSink/routes/RouterTable.dart';
import 'package:video_player_media_kit/video_player_media_kit.dart';

import 'domain/WifiManager.dart';
import 'pages/ScaffoldRoute.dart';

Future<void> main() async {

  if(kIsWeb){
    // 如果需要 ensureInitialized，请在这里运行。
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    WifiManager.instance.init();
    // MobileAds.instance.initialize();

    VideoPlayerMediaKit.ensureInitialized(
      android: true,
      iOS: true,
      macOS: true,
      windows: true,
      linux: true,
    );

    runApp(const MyApp());
  }else{
    FlutterBugly.postCatchedException(() {
      // 如果需要 ensureInitialized，请在这里运行。
      WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

      WifiManager.instance.init();

      VideoPlayerMediaKit.ensureInitialized(
        android: true,
        iOS: true,
        macOS: true,
        windows: true,
        linux: true,
      );

      runApp(const MyApp());
    });
  }

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
