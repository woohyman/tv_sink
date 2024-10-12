import 'package:flutter/material.dart';

// import 'package:flutter_bugly/flutter_bugly.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tvSink/routes/RouterTable.dart';

import 'domain/WifiManager.dart';
import 'pages/ScaffoldRoute.dart';

Future<void> main() async {
  // 如果需要 ensureInitialized，请在这里运行。
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  WifiManager.instance.init();
  MobileAds.instance.initialize();

  Supabase.initialize(
    url: 'https://iozcbyxqcgvqiosrabsw.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlvemNieXhxY2d2cWlvc3JhYnN3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjg1ODMxMjEsImV4cCI6MjA0NDE1OTEyMX0.i-1uXxnpgkK1-x8iKUphr02d3PErWah4Sx93vlpwSl8',
  );

  runApp(const MyApp());
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
