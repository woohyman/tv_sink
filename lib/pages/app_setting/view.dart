import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'logic.dart';

class AppSettingRoute extends GetView<AppSettingLogic> {
  const AppSettingRoute({Key? key}) : super(key: key);

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
                trailing: Obx(() {
                  return Switch(
                    value: controller.state.onlyPlayOnWifi,
                    onChanged: (value) {
                      controller.setOnlyPlayOnWifi(value);
                    },
                  );
                }),
              ),
              ListTile(
                title: const Text(
                  '是否自动切换播放源',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                trailing: Obx(() {
                  return Switch(
                    value: controller.state.autoSourceSwitch,
                    onChanged: (value) {
                      controller.setAutoSourceSwitch(value);
                    },
                  );
                }),
              ),
              ListTile(
                title: const Text(
                  '是否允许在后台播放',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                trailing: Obx(() {
                  return Switch(
                    value: controller.state.enableBackgroundPlay,
                    onChanged: (value) {
                      controller.enableBackgroundPlay = value;
                    },
                  );
                }),
              ),
              ListTile(
                onTap: () {
                  controller.showDialog(context);
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
                      visible: controller.state.needUpgrade.value,
                      child: Text(
                        ' 最新版本：${controller.state.remoteVersion.value} ',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: controller.state.needUpgrade.value,
                      child: const Icon(
                        Icons.ads_click,
                        size: 16.0,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                trailing: Text(
                  controller.state.localVersion.value,
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
