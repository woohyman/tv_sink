import 'package:flutter/material.dart';
import 'package:tvSink/business/WifiManager.dart';
import 'package:tvSink/model/sharePreference.dart';

import '../business/EventBus.dart';
import '../business/PlayControlManager.dart';
import '../util/const.dart';

class AppSettingRoute extends StatefulWidget {
  const AppSettingRoute({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SettingRouteState();
}

class _SettingRouteState extends State<AppSettingRoute> {
  bool _switchSelected = true; //维护单选开关状态

  @override
  void initState() {
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
                    if(WifiManager.instance.isNeedConnectWithWifi()){
                      PlayControlManager.instance.pause();
                    }
                    bus.emit(keyWifiCompulsion);
                    saveAppSettingWifiCompulsion(value);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
