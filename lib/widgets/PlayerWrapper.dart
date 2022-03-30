import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:provider/provider.dart';
import 'package:tvSink/model/bean/TvResource.dart';
import 'package:tvSink/util/log.dart';

import '../business/PlayControlManager.dart';

class PlayerWrapper extends StatefulWidget {
  late String _dataSource;

  PlayerWrapper(String dataSource, {Key? key}) : super(key: key) {
    _dataSource = dataSource;
  }

  @override
  State<PlayerWrapper> createState() => _PlayerWrapperState();
}

class _PlayerWrapperState extends State<PlayerWrapper> {
  late VlcPlayerController _videoPlayerController;
  late List array;
  PlayingState _playingState = PlayingState.initializing;

  void _handleTap(CommonData commonData) {
    // commonData.setTvChannel(widget._dataSource);
    if (_playingState == PlayingState.stopped) {
      _videoPlayerController
          .play()
          .then((value) => logger.i("开始播放！！！"))
          .catchError((e) {
        logger.e("播放出错 " + e);
      }, test: (_) => true);
    } else if (_playingState == PlayingState.playing) {
      _videoPlayerController
          .stop()
          .then((value) => logger.i("暂停播放！！！"))
          .catchError((e) {
        logger.e("暂停出错 " + e);
      }, test: (_) => true);
    }
    ;
  }

  @override
  void initState() {
    array = widget._dataSource.split(",");
    String dataSource1 = widget._dataSource;
    if (array.length > 1) dataSource1 = dataSource1.split(",")[1];
    _videoPlayerController =
        PlayControlManager.instance.getCurController(dataSource1) ??
            VlcPlayerController.network(
              dataSource1,
              hwAcc: HwAcc.full,
              autoPlay: false,
              options: VlcPlayerOptions(),
            );
    PlayControlManager.instance
        .setCurTvChannel(dataSource1, _videoPlayerController);

    _videoPlayerController.addListener(() {
      // if(_videoPlayerController.value.playingState == PlayingState.playing){
      //   logger.e("errorDescription => "+_videoPlayerController.value.errorDescription);
      // }
      if (_videoPlayerController.value.playingState == PlayingState.playing &&
          _videoPlayerController.value.position.inMilliseconds <= 0) {
        logger.e(
            "inMilliseconds => ${_videoPlayerController.value.position.inMilliseconds}");
        return;
      }
      if (_playingState != _videoPlayerController.value.playingState) {
        setState(
            () => _playingState = _videoPlayerController.value.playingState);
      }
    });
    super.initState();
  }

  Widget getStateView(CommonData commonData) {
    logger.e("getStateView ===> $_playingState");
    // if(commonData.getTvChannel() != widget._dataSource){
    //   return Image.asset(
    //     "images/icon_play.png",
    //     width: 50,
    //     height: 50,
    //   );
    // }

    switch (_playingState) {
      case PlayingState.initializing:
        return Text("");
      case PlayingState.initialized:
        return Image.asset(
          "images/icon_play.png",
          width: 50,
          height: 50,
        );
      case PlayingState.stopped:
        if (_videoPlayerController.value.hasError) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "images/icon_play.png",
                width: 50,
                height: 50,
              ),
              Text("错误码：" + _videoPlayerController.value.errorDescription,
                  style: TextStyle(color: Colors.red)),
            ],
          );
        } else {
          return Image.asset(
            "images/icon_play.png",
            width: 50,
            height: 50,
          );
        }
      case PlayingState.paused:
        return Image.asset(
          "images/icon_play.png",
          width: 50,
          height: 50,
        );
      case PlayingState.ended:
        return Image.asset(
          "images/icon_play.png",
          width: 50,
          height: 50,
        );
      case PlayingState.buffering:
        return CircularProgressIndicator();
      case PlayingState.playing:
        return Text("");
      case PlayingState.recording:
        return Text("");
      case PlayingState.error:
        return Image.asset(
          "images/icon_play.png",
          width: 80,
          height: 80,
        );
    }
  }

  @override
  void dispose() async {
    super.dispose();
    await _videoPlayerController.startRendererScanning();
    await _videoPlayerController.dispose();
    PlayControlManager.instance.removeChannel(widget._dataSource);
  }

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
                  Text(array[0] ?? ""),
                  VlcPlayer(
                    controller: _videoPlayerController,
                    aspectRatio: 16 / 9,
                    placeholder:
                        const Center(child: CircularProgressIndicator()),
                  ),
                ],
              )),
          getStateView(commonData),
        ],
      );
    });
  }
}
