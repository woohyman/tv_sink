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
    if(_playingState == PlayingState.stopped){
      PlayControlManager.instance
          .playCurTv(_videoPlayerController.dataSource);
    }else if(_playingState == PlayingState.playing){
      _videoPlayerController.stop();
    };
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
      if(_videoPlayerController.value.playingState == PlayingState.playing && _videoPlayerController.value.position.inMilliseconds <= 0){
        logger.e("inMilliseconds => ${_videoPlayerController.value.position.inMilliseconds}");
        return;
      }
      if (_playingState != _videoPlayerController.value.playingState) {
        setState(
            () => _playingState = _videoPlayerController.value.playingState);
      }
    });
    super.initState();
  }

  Widget getStateView() {
    logger.e("getStateView ===> $_playingState");
    switch (_playingState) {
      case PlayingState.initializing:
        return Text("");
      case PlayingState.initialized:
        return Icon(Icons.play_circle_filled);
      case PlayingState.stopped:
        return Icon(Icons.play_circle_filled);
      case PlayingState.paused:
        return Icon(Icons.play_circle_filled);
      case PlayingState.ended:
        return Icon(Icons.play_circle_filled);
      case PlayingState.buffering:
        return CircularProgressIndicator();
      case PlayingState.playing:
        return Text("");
      case PlayingState.recording:
        return Text("");
      case PlayingState.error:
        return Icon(Icons.play_circle_filled);
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
          getStateView(),
        ],
      );
    });
  }
}
