import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:provider/provider.dart';
import 'package:tvSink/model/bean/TvResource.dart';

import '../util/log.dart';

class PlayerWrapper extends StatefulWidget {
  late final String _dataSource;

  PlayerWrapper(String dataSource, {Key? key}) : super(key: key) {
    logger.d("== PlayerWrapper ==");
    _dataSource = dataSource;
  }

  @override
  State<StatefulWidget> createState() {
    return _PlayerState();
  }
}

class _PlayerState extends State<PlayerWrapper> {
  bool _active = false;
  late VlcPlayerController _videoPlayerController;

  @override
  void dispose() async {
    logger.d("== dispose ==");
    await _videoPlayerController.stopRendererScanning();
    await _videoPlayerController.dispose();
    super.dispose();
  }

  void _handleTap(CommonData commonData) {
    setState(() {
      _active = !_active;
      if (_active) {
        _videoPlayerController.stop();
      } else {
        commonData.setTvChannel(_videoPlayerController.dataSource);
        _videoPlayerController.play();
      }
    });
  }

  Widget getPlayerShow(CommonData commonData) {
    logger.d("== getPlayerShow ==");
    return VlcPlayer(
      controller: _videoPlayerController,
      aspectRatio: 16 / 9,
      placeholder: const Center(child: CircularProgressIndicator()),
    );
  }

  @override
  void initState() {
    logger.d("== initState ==");
    _videoPlayerController = VlcPlayerController.network(
      widget._dataSource,
      hwAcc: HwAcc.full,
      autoPlay: false,
      options: VlcPlayerOptions(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    logger.d("== build ==");
    return Consumer<CommonData>(builder: (ctx, commonData, child) {
      return InkWell(
        onTap: () => {_handleTap(commonData)},
        child: getPlayerShow(commonData),
      );
    });
  }
}
