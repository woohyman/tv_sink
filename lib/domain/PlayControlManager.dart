import 'dart:io';
import 'package:fijkplayer/fijkplayer.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';
import '../util/const.dart';

class PlayControlManager {
  final _ijkPlayer = FijkPlayer();
  late Player player;
  late VideoController controller;

  String curDataSource = "";
  bool _afterFirstPress = false;

  bool get afterFirstPress => _afterFirstPress;

  final Map<String, bool> _intervalTime = {};

  Map<String, bool> get intervalTime => _intervalTime;

  PlayControlManager._() {
    if (UniversalPlatform.isMacOS || UniversalPlatform.isWeb) {
      player = Player();
      controller = VideoController(player);
    }
  }

  void dispose() {
    player.dispose();
  }

  //第一种方式调用
  factory PlayControlManager() {
    return instance;
  }

  //第二种方式调用
  static PlayControlManager instance = PlayControlManager._();

  void setResourceAndPlay(String tvName, String? source) async {
    if (source == null) {
      return;
    }
    bool _autoPlay = _intervalTime[source] ?? true;
    eventBus.fire(const MapEntry(startPlayTv, true));
    _afterFirstPress = true;

    if (UniversalPlatform.isAndroid) {
      await _ijkPlayer.reset();
      await _ijkPlayer.setDataSource(source, autoPlay: false);
      await _ijkPlayer.prepareAsync();
      if (_autoPlay) {
        _ijkPlayer.start();
      }
    } else if (UniversalPlatform.isMacOS || UniversalPlatform.isWeb) {
      await player.stop();
      await player.open(Media(source), play: false);
      if (_autoPlay) {
        player.play();
      }
    }
  }

  void pause() async {
    if (UniversalPlatform.isAndroid) {
      await _ijkPlayer.pause();
    } else if (UniversalPlatform.isMacOS  || UniversalPlatform.isWeb) {
      await player.pause();
    }
  }

  void stop() async {
    if (UniversalPlatform.isAndroid) {
      await _ijkPlayer.stop();
    } else if (UniversalPlatform.isMacOS || UniversalPlatform.isWeb) {
      await player.stop();
    }
  }

  void play() async {
    if (UniversalPlatform.isAndroid) {
      await _ijkPlayer.start();
    } else if (UniversalPlatform.isMacOS || UniversalPlatform.isWeb) {
      await player.play();
    }
  }

  void release() async {
    if (UniversalPlatform.isAndroid) {
      await _ijkPlayer.release();
    } else if (UniversalPlatform.isMacOS || UniversalPlatform.isWeb) {
      await player.stop();
    }
  }

  Widget getPlayerWidget() {
    if (UniversalPlatform.isAndroid) {
      return FijkView(
        color: Colors.black,
        height: 250,
        fit: fill,
        player: _ijkPlayer,
        fs: true,
        cover: const NetworkImage(
            "https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/b3b7d0a20cf431ad7831c9504b36acaf2fdd98fc.jpg"),
      );
    } else {
      return Video(
        controller: controller,
        height: 250,
      );
    }
  }

  static const FijkFit fill = FijkFit(
    sizeFactor: 1.0,
    aspectRatio: -1,
    alignment: Alignment.center,
  );
}
