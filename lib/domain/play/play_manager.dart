import 'dart:math';

import 'package:get/get.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:flutter/material.dart';
import 'package:tv_sink/domain/model/transform.dart';
import '../../data/db/channel_type_enum.dart';
import '../../data/db/tv_channels_repository.dart';
import '../data_provider/play_data_provider.dart';
import '../model/tv_channel_info_model.dart';
import '../ad/ad_manager.dart';
import '../data_provider/app_set_data_provider.dart';

abstract class PlayManager {
  static get instant {
    return Get.find<PlayManager>();
  }

  final appDataProvider = AppSetDataProvider.fromGet();
  late VideoController controller;
  final adManager = AdManager.fromGet();
  String curDataSource = "";

  Future<void> playSource(
    MapEntry<String, TvChannelInfoModel> entry, {
    String? tvgUrl,
  });

  Future<void> innerPlaySource(
      MapEntry<String, TvChannelInfoModel> entry) async {
    PlayDataProvider.fromGet().setUser(entry);
    //开始加载广告
    if (Random().nextInt(50) == 3) {
      await adManager.showInterstitialAd();
    }
    TvChannelsRepository.fromType(ChannelType.historyChannel)
        .insert(entry.toInfo());
  }

  void pause();

  void stop();

  void play();

  void release();

  Widget getPlayerWidget();
}
