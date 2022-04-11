import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tvSink/model/bean/TvResource.dart';
import 'package:tvSink/routes/RouterTable.dart';
import 'package:tvSink/util/log.dart';

import '../business/PlayControlManager.dart';

class PlayerWrapper1 extends StatefulWidget {
  const PlayerWrapper1() : super();

  @override
  State<PlayerWrapper1> createState() => _PlayerWrapperState();
}

class _PlayerWrapperState extends State<PlayerWrapper1> {
  final FijkPlayer _player = FijkPlayer();
  late List array;
  SharedPreferences? _preferences;

  void _handleTap() {}

  @override
  void initState() {
    SharedPreferences.getInstance().then((value) => {
      _preferences = value,
    });

    _player.addListener(() {});
    super.initState();
  }

  @override
  void dispose() async {
    super.dispose();
    await _player.release();
  }

  static const FijkFit fill = FijkFit(
    sizeFactor: 1.0,
    aspectRatio: -1,
    alignment: Alignment.center,
  );

  @override
  Widget build(BuildContext context) {
    logger.i("build ==>");
    CommonData commonData = Provider.of<CommonData>(context, listen: true);
    commonData.switchTab(-1);

    String tvName = ModalRoute.of(context)?.settings.arguments.toString()??"";
    String tvSource = commonData.getSourceByKey(tvName)??"";
    logger.i("tvSource ==> $tvSource");
    _player.reset().then((value) => _player.setDataSource(tvSource, autoPlay: true).then((value) => {
      _player.start(),
      _player.enterFullScreen()
    }));

    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        InkWell(
            onTap: () => {_handleTap()},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FijkView(
                  color: Colors.black,
                  height: 250,
                  fit: fill,
                  player: _player,
                ),
              ],
            )),
        // getStateView(commonData),
      ],
    );
  }
}
