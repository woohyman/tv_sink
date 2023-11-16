import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../domain/PlayControlManager.dart';
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
      print("5555555555555555555 --===> addListener");
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
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    var realWidth = width;
    var realHeight =
        width / PlayControlManager.instance.controller.value.aspectRatio;
    if(PlayControlManager.instance.controller.value.aspectRatio == 1){
      realWidth = width;
      realHeight = height / 2;
    }else if (realHeight > height / 2) {
      realHeight = height / 2;
      realWidth =
          PlayControlManager.instance.controller.value.aspectRatio * realHeight;
    }

    print("aspectRatio --===> "+PlayControlManager.instance.controller.value.aspectRatio.toString());
    print("isInitialized --===> "+PlayControlManager.instance.controller.value.isInitialized.toString());
    print("size --===> "+PlayControlManager.instance.controller.value.size.toString());

    return SizedBox(
      height: realHeight,
      width: realWidth,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          ValueListenableBuilder<bool>(
            builder: (BuildContext context, bool value, Widget? child) {
              return Container(
                padding: const EdgeInsets.all(20),
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
