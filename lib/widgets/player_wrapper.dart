import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../domain/play/play_manager.dart';
import '../domain/data_provider/app_set_data_provider.dart';
import '../domain/data_provider/play_data_provider.dart';
import '../routes/router_table.dart';

class PlayerWrapper extends StatelessWidget {
  const PlayerWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Obx(() {
          return Visibility(
            visible: PlayDataProvider.fromGet().selectUrl.value.value != null,
            child: InkWell(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                PlayManager.instant.getPlayerWidget(),
              ],
            )),
          );
        }),
        Obx(() {
          return Visibility(
            visible: !AppSetDataProvider.fromGet().allowPlayback,
            child: Container(
              padding: const EdgeInsets.only(
                left: 0,
                right: 0,
                top: 12,
                bottom: 12,
              ),
              color: Colors.black,
              child: const Align(
                child: Text(
                  "数据流量下不能播放！\n点击前往设置界面修改！",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          );
        }),
        Obx(
          () {
            return Visibility(
              visible: !AppSetDataProvider.fromGet().allowPlayback,
              child: InkWell(
                onTap: () {
                  Get.toNamed(RouterTable.appSettingPath);
                },
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 0,
                    right: 0,
                    top: 12,
                    bottom: 12,
                  ),
                  color: Colors.black,
                  child: const Align(
                    child: Text(
                      "数据流量下不能播放！\n点击前往设置界面修改！",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
