import 'package:flutter/material.dart';
import '../domain/PlayControlManager.dart';
import '../domain/WifiManager.dart';
import '../util/const.dart';

class PlayerWrapper extends StatefulWidget {
  PlayerWrapper({Key? key}) : super(key: key) {}

  @override
  State<PlayerWrapper> createState() => _PlayerWrapperState();
}

class _PlayerWrapperState extends State<PlayerWrapper> {
  final ValueNotifier<bool> showBannerBg = ValueNotifier<bool>(false);

  @override
  void initState() {
    eventBus.on<MapEntry<String, dynamic>>().listen((event) {
      switch (event.key) {
        case keyWifiCompulsion:
          setState(() {});
          break;
        case startPlayTv:
          showBannerBg.value = event.value;
          break;
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    PlayControlManager.instance.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        ValueListenableBuilder<bool>(
          builder: (BuildContext context, bool value, Widget? child) {
            return Visibility(
              visible: showBannerBg.value,
              child: InkWell(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  PlayControlManager.instance.getPlayerWidget(),
                ],
              )),
            );
          },
          valueListenable: showBannerBg,
        ),
        Visibility(
          visible: WifiManager.instance.isNeedConnectWithWifi,
          child: Container(
            padding:
                const EdgeInsets.only(left: 0, right: 0, top: 12, bottom: 12),
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
