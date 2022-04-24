import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bugly/flutter_bugly.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:tvSink/model/bean/TvResource.dart';
import 'package:tvSink/routes/RouterTable.dart';

import 'ad/TvInterstitialAd.dart';
import 'pages/ScaffoldRoute.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  TvInterstitialAd.instance.load();
  MobileAds.instance.initialize();
  FlutterBugly.postCatchedException(() {
    // 如果需要 ensureInitialized，请在这里运行。
    // WidgetsFlutterBinding.ensureInitialized();
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CommonData>(
      lazy: false,
      create: (ctx) => CommonData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouterTable.onGenerateRoute,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ScaffoldRoute(),
        builder: EasyLoading.init(),
      ),
    );
  }
}
