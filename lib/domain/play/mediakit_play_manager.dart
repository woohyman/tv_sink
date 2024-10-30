import 'dart:math';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:flutter/material.dart';
import 'package:tv_sink/domain/ad/ad_manager.dart';
import 'package:tv_sink/domain/play/play_manager.dart';
import 'package:tv_sink/util/log.dart';
import '../../data/db/HistoryDbRepository.dart';
import '../data_provider/PlayDataProvider.dart';
import '../model/TvInfo.dart';

class MediakitPlayManager extends PlayManager {
  late Player player;

  MediakitPlayManager() {
    player = Player();
    controller = VideoController(player);
    if (appDataProvider.autoSourceSwitch == true) {
      player.stream.error.listen(
        (event) {
          final provider = PlayDataProvider.fromGet();
          try {
            final entry = provider.playUrlMap.entries.firstWhere((value) {
              return !value.value.isConnected;
            });
            _setResourceAndPlay(entry.key);
          } catch (_) {}
        },
      );
    }
  }

  @override
  Future<void> playSource(MapEntry<String, TvInfo> entry,
      {String? tvgUrl}) async {
    if (tvgUrl != null) {
      PlayDataProvider.fromGet().selectUrl.value.value = tvgUrl;
    } else {
      PlayDataProvider.fromGet().selectUrl.value.value =
          entry.value.tvgUrlList.first;
    }

    if (!appDataProvider.allowPlayback) {
      pause();
      return;
    }

    PlayDataProvider.fromGet().setUser(entry);

    //开始加载广告
    if (Random().nextInt(50) == 3) {
      await adManager.showInterstitialAd();
    }

    _setResourceAndPlay(PlayDataProvider.fromGet().selectUrl.value.value);
    HistoryDbRepository().insertDog(entry);
  }

  void _setResourceAndPlay(String? source) async {
    if (source == null) {
      return;
    }

    PlayDataProvider.fromGet().setUrl(source);

    await player.stop();
    await player.open(Media(source), play: false);
    player.play();
  }

  @override
  void pause() async {
    await player.pause();
  }

  @override
  void stop() async {
    await player.stop();
  }

  @override
  void play() async {
    await player.play();
  }

  @override
  void release() async {
    await player.stop();
  }

  @override
  Widget getPlayerWidget() {
    return Video(
      controller: controller,
      height: 250,
    );
  }
}
