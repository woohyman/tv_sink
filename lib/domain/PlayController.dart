import 'dart:math';
import 'package:fijkplayer/fijkplayer.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:flutter/material.dart';
import 'package:tv_sink/pages/model/data.dart';
import 'package:tv_sink/util/log.dart';
import 'package:universal_platform/universal_platform.dart';
import '../data/db/HistoryDbRepository.dart';
import 'ad/TvInterstitialAd.dart';
import 'data_provider/AppSetDataProvider.dart';
import 'data_provider/PlayDataProvider.dart';
import 'model/TvInfo.dart';

class PlayController {
  final _ijkPlayer = FijkPlayer();
  late Player player;
  late VideoController controller;

  String curDataSource = "";

  PlayController._() {
    if (UniversalPlatform.isMacOS || UniversalPlatform.isWeb) {
      player = Player();
      controller = VideoController(player);
    }

    if (UniversalPlatform.isAndroid) {
      if (AppSetDataProvider.fromGet().autoSourceSwitch == false) {
        _ijkPlayer.addListener(() {
          if (_ijkPlayer.state == FijkState.error) {
            final provider = PlayDataProvider.fromGet();
            try {
              final entry = provider.playUrlMap.entries.firstWhere((value) {
                return !value.value.isConnected;
              });
              _setResourceAndPlay(entry.key);
            } catch (error) {}
          }
        });
      }
    } else if (UniversalPlatform.isMacOS || UniversalPlatform.isWeb) {
      if (AppSetDataProvider.fromGet().autoSourceSwitch == false) {
        player.stream.error.listen(
          (event) {
            final provider = PlayDataProvider.fromGet();
            try {
              final entry = provider.playUrlMap.entries.firstWhere((value) {
                return !value.value.isConnected;
              });
              _setResourceAndPlay(entry.key);
            } catch (error) {}
          },
        );
      }
    }
  }

  void dispose() {
    player.dispose();
  }

  //第一种方式调用
  factory PlayController() {
    return instance;
  }

  //第二种方式调用
  static PlayController instance = PlayController._();

  Future<void> playSource(MapEntry<String, TvInfo> entry,
      {String? tvgUrl}) async {
    if (tvgUrl != null) {
      PlayDataProvider.fromGet().selectUrl.value.value = tvgUrl;
    } else {
      PlayDataProvider.fromGet().selectUrl.value.value =
          entry.value.tvgUrlList.first;
    }

    if (!AppSetDataProvider.fromGet().allowPlayback) {
      pause();
      return;
    }

    PlayDataProvider.fromGet().setUser(entry);

    if (!UniversalPlatform.isAndroid) {
      _setResourceAndPlay(PlayDataProvider.fromGet().selectUrl.value.value);
      HistoryDbRepository().insertDog(entry);
      return;
    }

    //开始加载广告
    if (TvInterstitialAd.instance.interstitialAd != null &&
        Random().nextInt(50) == 3) {
      await TvInterstitialAd.instance.show();
    }

    _setResourceAndPlay(PlayDataProvider.fromGet().selectUrl.value.value);
    HistoryDbRepository().insertDog(entry);
  }

  void _setResourceAndPlay(String? source) async {
    if (source == null) {
      return;
    }

    PlayDataProvider.fromGet().setUrl(source);

    if (UniversalPlatform.isAndroid) {
      await _ijkPlayer.reset();
      await _ijkPlayer.setDataSource(source, autoPlay: false);
      await _ijkPlayer.prepareAsync();
      _ijkPlayer.start();
    } else if (UniversalPlatform.isMacOS || UniversalPlatform.isWeb) {
      await player.stop();
      await player.open(Media(source), play: false);
      player.play();
    }
  }

  void pause() async {
    if (UniversalPlatform.isAndroid) {
      await _ijkPlayer.pause();
    } else if (UniversalPlatform.isMacOS || UniversalPlatform.isWeb) {
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
