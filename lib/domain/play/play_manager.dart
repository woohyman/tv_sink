import 'package:get/get.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:flutter/material.dart';
import '../model/tv_channel_info_model.dart';
import '../ad/ad_manager.dart';
import '../data_provider/app_set_data_provider.dart';

abstract class PlayManager {
  static get instant {
    return Get.find<PlayManager>();
  }

  final appDataProvider = AppSetDataProvider.fromGet();
  late VideoController controller;
  final adManager = AdManager();
  String curDataSource = "";

  Future<void> playSource(
    MapEntry<String, TvChannelInfoModel> entry, {
    String? tvgUrl,
  });

  void pause();

  void stop();

  void play();

  void release();

  Widget getPlayerWidget();
}
