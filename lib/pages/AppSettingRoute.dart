import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:tvSink/business/WifiManager.dart';
import 'package:tvSink/model/sharePreference.dart';

import '../business/EventBus.dart';
import '../business/PlayControlManager.dart';
import '../update/FlutterBuglyManager.dart';
import '../util/const.dart';

class AppSettingRoute extends StatefulWidget {
  const AppSettingRoute({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SettingRouteState();
}

class _SettingRouteState extends State<AppSettingRoute> {
  bool _switchSelected = true; //维护单选开关状态
  PackageInfo? _packageInfo;

  @override
  void initState() {
    PackageInfo.fromPlatform().then((value) => {
          setState(() => {_packageInfo = value})
        });

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
                    if (WifiManager.instance.isNeedConnectWithWifi()) {
                      PlayControlManager.instance.pause();
                    }
                    bus.emit(keyWifiCompulsion);
                    saveAppSettingWifiCompulsion(value);
                  });
                },
              ),
            ),
            ListTile(
              onTap: () {
                FlutterBuglyManager.instance.checkUpgrade();
              },
              title: Row(
                children: [
                  const Text(
                    '当前版本号',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Visibility(
                    visible: FlutterBuglyManager.instance.versionCode > int.parse(_packageInfo?.buildNumber ?? "0"),
                    child: Text(
                      ' 最新版本：${FlutterBuglyManager.instance.versionName} ',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: FlutterBuglyManager.instance.versionCode > int.parse(_packageInfo?.buildNumber ?? "0"),
                    child: const Icon(
                      Icons.ads_click,
                      size: 16.0,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              trailing: Text(
                '${_packageInfo?.version}',
                style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
