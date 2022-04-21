import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tvSink/model/bean/TvResource.dart';

import '../business/PlayControlManager.dart';
import '../business/WifiManager.dart';

class PlayerWrapper extends StatefulWidget {
  PlayerWrapper({Key? key}) : super(key: key) {}

  @override
  State<PlayerWrapper> createState() => _PlayerWrapperState();
}

class _PlayerWrapperState extends State<PlayerWrapper> {
  void _handleTap(CommonData commonData) {}

  @override
  void didUpdateWidget(covariant PlayerWrapper oldWidget) {
    WifiManager.instance.fetchWifiStateByLocal();
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    WifiManager.instance.fetchWifiStateByReal();
    super.initState();
  }

  static const FijkFit fill = FijkFit(
    sizeFactor: 1.0,
    aspectRatio: -1,
    alignment: Alignment.center,
  );

  @override
  Widget build(BuildContext context) {
    return Consumer<CommonData>(builder: (ctx, commonData, child) {
      return Stack(
        alignment: Alignment.center,
        children: <Widget>[
          InkWell(
              onTap: () => {_handleTap(commonData)},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FijkView(
                    color: Colors.black,
                    height: 250,
                    fit: fill,
                    player: PlayControlManager.instance.getPlayer(),
                    fs: true,
                    cover: NetworkImage(
                        "https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/b3b7d0a20cf431ad7831c9504b36acaf2fdd98fc.jpg"),
                  ),
                ],
              )),
          // getStateView(commonData),
          Visibility(
            visible: WifiManager.instance.isTvShow(),
            child: Container(
              width: 200,
              height: 100,
              color: Colors.transparent,
              child: Align(
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
    });
  }
}
