import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../domain/PlayControlManager.dart';
import '../domain/WifiManager.dart';
import '../util/const.dart';

class PlayerWrapper extends StatefulWidget {
  const PlayerWrapper({Key? key}) : super(key: key);

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

    PlayControlManager.instance.controller.initialize();
    PlayControlManager.instance.addListener(() {
      print("====================********************=====>");
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    PlayControlManager.instance.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          ValueListenableBuilder<bool>(
            builder: (BuildContext context, bool value, Widget? child) {
              return Container(
                padding: const EdgeInsets.all(20),
                child: AspectRatio(
                  aspectRatio:
                      PlayControlManager.instance.controller.value.aspectRatio,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      VideoPlayer(PlayControlManager.instance.controller),
                      ClosedCaption(
                          text: PlayControlManager
                              .instance.controller.value.caption.text),
                      VideoProgressIndicator(
                          PlayControlManager.instance.controller,
                          allowScrubbing: true),
                    ],
                  ),
                ),
              );
            },
            valueListenable: showBannerBg,
          ),
          Visibility(
            visible: false,
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
      ),
    );
  }
}
