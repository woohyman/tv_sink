import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tv_sink/domain/upgrade/UpgradeDataProvider.dart';
import '../domain/WifiManager.dart';
import '../domain/data_provider/AppSettingController.dart';
import '../domain/upgrade/UpgradeController.dart';

class AppSettingRoute extends StatefulWidget {
  const AppSettingRoute({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SettingRouteState();
}

class _SettingRouteState extends State<AppSettingRoute> {
  final _upgradeDataProvider = UpgradeDataProvider.fromGet();
  final _upgradeController = UpgradeController();
  final _appSettingController = AppSettingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("应用设置")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() {
          return ListView(
            shrinkWrap: true,
            children: <Widget>[
              ListTile(
                title: const Text(
                  '允许非wifi网络自动播放',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                trailing: Switch(
                  value: _appSettingController.switchSelected.value,
                  onChanged: (value) {
                    //重新构建页面
                    setState(() {
                      _appSettingController.switchSelected.value = value;
                      WifiManager.instance.setIsNeedWifi(value);
                    });
                  },
                ),
              ),
              ListTile(
                onTap: () {
                  _upgradeController.showDialog(context);
                },
                title: Row(
                  children: [
                    const Text(
                      '当前版本号',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    Visibility(
                      visible: _upgradeDataProvider.needUpgrade.value ?? false,
                      child: Text(
                        ' 最新版本：${_upgradeDataProvider.remoteVersion.value} ',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: _upgradeDataProvider.needUpgrade.value ?? false,
                      child: const Icon(
                        Icons.ads_click,
                        size: 16.0,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                trailing: Text(
                  _upgradeDataProvider.localVersion.value,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
