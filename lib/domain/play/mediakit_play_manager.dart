import 'dart:math';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:flutter/material.dart';
import 'package:tv_sink/domain/model/transform.dart';
import 'package:tv_sink/domain/play/play_manager.dart';
import '../../data/db/channel_type_enum.dart';
import '../../data/db/tv_channels_repository.dart';
import '../model/tv_channel_info_model.dart';
import '../data_provider/play_data_provider.dart';

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
  Future<void> playSource(MapEntry<String, TvChannelInfoModel> entry,
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

    await innerPlaySource(entry);
    _setResourceAndPlay(PlayDataProvider.fromGet().selectUrl.value.value);
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