import 'dart:math';
import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';
import 'package:tv_sink/domain/model/transform.dart';
import 'package:tv_sink/domain/play/play_manager.dart';
import '../../data/db/channel_type_enum.dart';
import '../../data/db/tv_channels_repository.dart';
import '../../util/log_util.dart';
import '../model/tv_channel_info_model.dart';
import '../data_provider/play_data_provider.dart';

class IjkPlayManager extends PlayManager {
  final _ijkPlayer = FijkPlayer();

  IjkPlayManager() {
    if (appDataProvider.autoSourceSwitch == true) {
      _ijkPlayer.addListener(() {
        if (_ijkPlayer.state == FijkState.error) {
          final provider = PlayDataProvider.fromGet();
          try {
            final entry = provider.playUrlMap.entries.firstWhere((value) {
              return !value.value.isConnected;
            });
            _setResourceAndPlay(entry.key);
          } finally {}
        }
      });
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
    logger.i("TvInterstitialAdManager------------------> 开始播放");
    _setResourceAndPlay(PlayDataProvider.fromGet().selectUrl.value.value);
  }

  void _setResourceAndPlay(String? source) async {
    if (source == null) {
      return;
    }

    PlayDataProvider.fromGet().setUrl(source);

    await _ijkPlayer.reset();
    await _ijkPlayer.setDataSource(source, autoPlay: false);
    await _ijkPlayer.prepareAsync();
    _ijkPlayer.start();
  }

  @override
  void pause() async {
    await _ijkPlayer.pause();
  }

  @override
  void stop() async {
    await _ijkPlayer.stop();
  }

  @override
  void play() async {
    await _ijkPlayer.start();
  }

  @override
  void release() async {
    await _ijkPlayer.release();
  }

  @override
  Widget getPlayerWidget() {
    return FijkView(
      color: Colors.black,
      height: 250,
      fit: fill,
      player: _ijkPlayer,
      fs: true,
      cover: const NetworkImage(
          "https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/b3b7d0a20cf431ad7831c9504b36acaf2fdd98fc.jpg"),
    );
  }

  static const FijkFit fill = FijkFit(
    sizeFactor: 1.0,
    aspectRatio: -1,
    alignment: Alignment.center,
  );
}