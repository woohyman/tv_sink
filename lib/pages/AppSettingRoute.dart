import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:retry/retry.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tvSink/domain/WifiManager.dart';
import 'package:tvSink/datastore/sharePreference.dart';
import 'package:url_launcher/url_launcher.dart';

import '../domain/PlayControlManager.dart';
import '../update/ApkVersionController.dart';
import '../update/UpdateController.dart';
import '../util/const.dart';
import '../util/log.dart';

class AppSettingRoute extends StatefulWidget {
  const AppSettingRoute({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SettingRouteState();
}

class _SettingRouteState extends State<AppSettingRoute> {
  bool _switchSelected = true; //维护单选开关状态
  final ApkVersionController apkVersionController = ApkVersionController();
  final UpdateController updateController = UpdateController();

  @override
  void initState() {
    updateController
        .fetchApkVersion()
        .then((value) => {setState(() => {})});
    apkVersionController
        .fetchApkVersion()
        .then((value) => {setState(() => {})});
    fetchAppSettingWifiCompulsion().then((value) => {
          setState(() => {_switchSelected = value})
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("应用设置")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            ListTile(
              title: const Text(
                '允许非wifi网络自动播放',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              trailing: Switch(
                value: _switchSelected, //当前状态
                onChanged: (value) {
                  //重新构建页面
                  setState(() {
                    _switchSelected = value;
                    WifiManager.instance.setIsNeedWifi(value);
                  });
                },
              ),
            ),
            ListTile(
              onTap: () {
                updateController.launchUpdateUrl();
              },
              title: Row(
                children: [
                  const Text(
                    '当前版本号',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Visibility(
                    visible: updateController.versionCode >
                        apkVersionController.versionCode,
                    child: Text(
                      ' 最新版本：${updateController.versionName} ',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: updateController.versionCode >
                        apkVersionController.versionCode,
                    child: const Icon(
                      Icons.ads_click,
                      size: 16.0,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              trailing: Text(
                '${apkVersionController.versionName}',
                style: const TextStyle(
                    fontWeight: FontWeight.normal, fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
