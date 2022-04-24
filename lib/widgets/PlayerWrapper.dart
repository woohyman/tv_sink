import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tvSink/model/bean/TvResource.dart';

import '../ad/TvInterstitialAd.dart';
import '../business/EventBus.dart';
import '../business/PlayControlManager.dart';
import '../business/WifiManager.dart';
import '../util/const.dart';

class PlayerWrapper extends StatefulWidget {
  PlayerWrapper({Key? key}) : super(key: key) {}

  @override
  State<PlayerWrapper> createState() => _PlayerWrapperState();
}

class _PlayerWrapperState extends State<PlayerWrapper> {
  final ValueNotifier<bool> showBannerBg = ValueNotifier<bool>(false);

  @override
  void didUpdateWidget(covariant PlayerWrapper oldWidget) {
    WifiManager.instance.fetchWifiStateByLocal();
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    WifiManager.instance.fetchWifiStateByReal();
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
          visible: WifiManager.instance.isTvShow(),
          child: Container(
            width: 200,
            height: 100,
            color: Colors.transparent,
            child: const Align(
              child: Text(
                "数据流量下不能播放！请前往设置界面修改！",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
