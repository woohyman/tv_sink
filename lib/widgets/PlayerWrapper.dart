import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:provider/provider.dart';
import 'package:tvSink/model/CommonData.dart';

class PlayerWrapper extends StatefulWidget {
  late String dataSource;
  late VlcPlayerController _videoPlayerController;

  PlayerWrapper(String dataSource, {Key? key}) : super(key: key) {
    this.dataSource = dataSource;
    var url = dataSource.toString();
    print(" PlayerWrapper ========================================> $url");
    _videoPlayerController = VlcPlayerController.network(
      dataSource,
      hwAcc: HwAcc.full,
      autoPlay: false,
      options: VlcPlayerOptions(),
    );
  }

  @override
  State<StatefulWidget> createState() {
    var state = _PlayerState();
    state._videoPlayerController = _videoPlayerController;
    return state;
  }
}

class _PlayerState extends State<PlayerWrapper> {
  bool _active = false;
  late VlcPlayerController _videoPlayerController;

  void _handleTap(CommonData commonData) {
    setState(() {
      _active = !_active;
      var url = _videoPlayerController.dataSource.toString();
      if (_active) {
        print("暂停播放|地址 => $url");
        _videoPlayerController.stop();
      } else {
        commonData.setTvChannel(_videoPlayerController.dataSource);
        print("开始播放|地址 => $url");
        _videoPlayerController.play();
      }
    });
  }

  Widget getPlayerShow(CommonData commonData) {
    if (commonData.getTvChannel() != _videoPlayerController.dataSource) {
      _videoPlayerController.stop();
    }

    return VlcPlayer(
      controller: _videoPlayerController,
      aspectRatio: 16 / 9,
      placeholder: const Center(child: CircularProgressIndicator()),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CommonData>(builder: (ctx, commonData, child) {
      return InkWell(
        onTap: () => {_handleTap(commonData)},
        child: getPlayerShow(commonData),
      );
    });
  }
}
