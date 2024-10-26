import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/utils.dart';
import '../domain/PlayController.dart';
import '../domain/WifiManager.dart';
import '../domain/data_provider/PlayDataProvider.dart';
import '../util/const.dart';

class PlayerWrapper extends StatefulWidget {
  PlayerWrapper({Key? key}) : super(key: key) {}

  @override
  State<PlayerWrapper> createState() => _PlayerWrapperState();
}

class _PlayerWrapperState extends State<PlayerWrapper> {
  final _playController = PlayDataProvider.fromGet();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    PlayController.instance.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Obx(() {
          return Visibility(
            visible: _playController.selectUrl.value.value != null,
            child: InkWell(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                PlayController.instance.getPlayerWidget(),
              ],
            )),
          );
        }),
        Visibility(
          visible: WifiManager.instance.isNeedConnectWithWifi,
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
                "数据流量下不能播放！请前往设置界面修改！",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        )
      ],
    );
  }
}
