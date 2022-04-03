import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tvSink/model/bean/TvResource.dart';
import 'package:tvSink/util/log.dart';

import '../business/PlayControlManager.dart';

class PlayerWrapper extends StatefulWidget {
  late String _dataSource;
  late int _index;

  PlayerWrapper(String dataSource, int index, {Key? key}) : super(key: key) {
    _dataSource = dataSource;
    _index = index;
  }

  @override
  State<PlayerWrapper> createState() => _PlayerWrapperState();
}

class _PlayerWrapperState extends State<PlayerWrapper> {
  final FijkPlayer _player = FijkPlayer();
  late List array;


  void _handleTap(CommonData commonData) {}

  @override
  void initState() {
    _player.addListener(() {});
    super.initState();
  }

  @override
  void dispose() async {
    super.dispose();
    await _player.release();
  }

  String curDataSource = "";

  static const FijkFit fill = FijkFit(
    sizeFactor: 1.0,
    aspectRatio: -1,
    alignment: Alignment.center,
  );

  @override
  void deactivate() {
    logger.e("------------------------------------ ==> deactivate");
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CommonData>(builder: (ctx, commonData, child) {
      if (widget._index != commonData.index) {
        _player.pause();
      } else if (curDataSource != commonData.getTvChannel()) {
        curDataSource = commonData.getTvChannel();
        logger.i("开始播放资源 == "+curDataSource);
        _player.reset().then((value) => _player.setDataSource(curDataSource, autoPlay: true).then((value) => {
          _player.start()
        }));
      }
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
                    player: _player,
                    fs: true,
                  ),
                ],
              )),
          // getStateView(commonData),
        ],
      );
    });
  }
}
