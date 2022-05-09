import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';
import '../base/EventBus.dart';
import '../base/PlayControlManager.dart';
import '../base/WifiManager.dart';
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
    bus.on(keyWifiCompulsion, (arg) => setState(() {}));

    bus.on(startPlayTv, (arg) {
      showBannerBg.value = arg;
    });
    super.initState();
  }

  static const FijkFit fill = FijkFit(
    sizeFactor: 1.0,
    aspectRatio: -1,
    alignment: Alignment.center,
  );

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
                  FijkView(
                    color: Colors.black,
                    height: 250,
                    fit: fill,
                    player: PlayControlManager.instance.getPlayer(),
                    fs: true,
                    cover: const NetworkImage(
                        "https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/b3b7d0a20cf431ad7831c9504b36acaf2fdd98fc.jpg"),
                  ),
                ],
              )),
            );
          },
          valueListenable: showBannerBg,
        ),
        Visibility(
          visible: WifiManager.instance.isNeedConnectWithWifi(),
          child: Container(
            padding: const EdgeInsets.only(left: 0, right: 0, top: 12, bottom: 12),
            color: Colors.black,
            child: const Align(
              child: Text(
                "数据流量下不能播放！请前往设置界面修改！",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
