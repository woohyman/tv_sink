import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tvSink/model/bean/TvResource.dart';
import 'package:tvSink/util/log.dart';

import '../business/PlayControlManager.dart';

class PlayerWrapper extends StatefulWidget {
  PlayerWrapper({Key? key}) : super(key: key) {}

  @override
  State<PlayerWrapper> createState() => _PlayerWrapperState();
}

class _PlayerWrapperState extends State<PlayerWrapper> {
  final FijkPlayer _player = FijkPlayer();
  late List array;
  late StreamSubscription subscription;
  ConnectivityResult _result = ConnectivityResult.none;
  bool isNeedWifi = false;

  void _handleTap(CommonData commonData) {}

  @override
  void activate() {
    logger.e("================> 激活 ");
    super.activate();
  }

  @override
  void didUpdateWidget(covariant PlayerWrapper oldWidget) {
    logger.e("================> 更新 ");
    SharedPreferences.getInstance().then((preferences) => {
          logger.e("================>更新 -------------- $isNeedWifi"),
          if (isNeedWifi != !(preferences.getBool("11") ?? true))
            {
              isNeedWifi = !(preferences.getBool("11") ?? true),
              // setState(() => {_player.pause()})
            }
        });
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    logger.e("================> 初始化 ");
    Connectivity().checkConnectivity().then((value) => {
          setState(() => {
                // if (_result == ConnectivityResult.mobile) {_player.pause()},
                SharedPreferences.getInstance().then((preferences) => {
                      _result = value,
                      logger.e("================> 初始化 --- $_result"),
                      isNeedWifi = !(preferences.getBool("11") ?? true)
                    })
              })
        });

    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      setState(() => {
            // if (_result == ConnectivityResult.mobile) {_player.pause()},
            _result = result,
          });
    });
    _player.addListener(() {
      if (_result == ConnectivityResult.mobile &&
          _player.value.state == FijkState.started) {
        SharedPreferences.getInstance().then((preferences) => {
              logger.e("================> -------------- $isNeedWifi"),
              // if (isNeedWifi) setState(() => {_player.pause()})
            });
      }
    });
    super.initState();
  }

  @override
  void dispose() async {
    super.dispose();
    await _player.release();
    subscription.cancel();
  }

  String curDataSource = "";

  static const FijkFit fill = FijkFit(
    sizeFactor: 1.0,
    aspectRatio: -1,
    alignment: Alignment.center,
  );

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    logger.i("==== build ===");
    return Consumer<CommonData>(builder: (ctx, commonData, child) {
      if (_result == ConnectivityResult.mobile && isNeedWifi) {
        _player.pause();
      } else if (curDataSource != commonData.getTvChannel()) {
        curDataSource = commonData.getTvChannel();
        _player.reset().then((value) => _player
            .setDataSource(curDataSource, autoPlay: true)
            .then((value) => {_player.start()}));
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
          Visibility(
            visible: _result == ConnectivityResult.mobile && isNeedWifi,
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
