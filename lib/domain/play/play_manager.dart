import 'package:get/get.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:flutter/material.dart';
import '../ad/ad_manager.dart';
import '../data_provider/AppSetDataProvider.dart';
import '../model/TvInfo.dart';

abstract class PlayManager {
  static get instant {
    return Get.find<PlayManager>();
  }

  final appDataProvider = AppSetDataProvider.fromGet();
  late VideoController controller;
  final adManager = AdManager();
  String curDataSource = "";

  Future<void> playSource(
    MapEntry<String, TvInfo> entry, {
    String? tvgUrl,
  });

  void pause();

  void stop();

  void play();

  void release();

  Widget getPlayerWidget();
}
