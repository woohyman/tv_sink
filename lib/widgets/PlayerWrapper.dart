import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:provider/provider.dart';
import 'package:tvSink/model/bean/TvResource.dart';

import '../business/PlayControlManager.dart';
import '../util/log.dart';

class PlayerWrapper extends StatelessWidget {
  bool _active = false;
  late VlcPlayerController _videoPlayerController;

  PlayerWrapper(String dataSource, {Key? key}) : super(key: key) {
    logger.d("== PlayerWrapper ==" +
        PlayControlManager.instance.controls.keys.toString());
    if (PlayControlManager.instance.controls.containsKey(dataSource)) {
      _videoPlayerController = PlayControlManager.instance.controls[dataSource];
    } else {
      _videoPlayerController = VlcPlayerController.network(
        dataSource,
        hwAcc: HwAcc.full,
        autoPlay: false,
        options: VlcPlayerOptions(),
      );
    }
    _videoPlayerController.initialize();
    PlayControlManager.instance.controls[dataSource] = _videoPlayerController;
  }

  void _handleTap(CommonData commonData) {
    _active = !_active;
    if (_active) {
      _videoPlayerController.stop();
    } else {
      commonData.setTvChannel(_videoPlayerController.dataSource);
      if (_videoPlayerController.isReadyToInitialize == true) {
        _videoPlayerController.play();
      } else {
        _videoPlayerController
            .initialize()
            .then((value) => _videoPlayerController.play());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CommonData>(builder: (ctx, commonData, child) {
      return InkWell(
        onTap: () => {_handleTap(commonData)},
        child: VlcPlayer(
          controller: _videoPlayerController,
          aspectRatio: 16 / 9,
          placeholder: const Center(child: CircularProgressIndicator()),
        ),
      );
    });
  }
}
