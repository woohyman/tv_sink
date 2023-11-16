import 'dart:ui';

import 'package:video_player/video_player.dart';

import '../util/const.dart';

class PlayControlManager {
  VideoPlayerController controller = VideoPlayerController.networkUrl(
    Uri.parse('http://liveop.cctv.cn/hls/4KHD/playlist.m3u8'),
    videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
  );

  String curDataSource = "";
  bool _afterFirstPress = false;

  bool get afterFirstPress => _afterFirstPress;
  int _preSnapTime = -1;
  final Map<String, bool> _intervalTime = {};

  Map<String, bool> get intervalTime => _intervalTime;

  PlayControlManager._() {

  }

  //第一种方式调用
  factory PlayControlManager() {
    return instance;
  }

  VoidCallback? _listener;
  void addListener(VoidCallback listener){
    _listener = listener;
  }

  //第二种方式调用
  static PlayControlManager instance = PlayControlManager._();

  void setResourceAndPlay(String tvName, String source) async {
    bool _autoPlay = _intervalTime[source] ?? true;
    eventBus.fire(const MapEntry(startPlayTv, true));
    _afterFirstPress = true;

    await controller.dispose();
    // source = "http://liveop.cctv.cn/hls/4KHD/playlist.m3u8";
    print("== Uri.parse(source) =="+source);

    controller = VideoPlayerController.networkUrl(
      Uri.parse(source),
      videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
    );
    // if(_autoPlay){

    await controller.initialize();
    await controller.play();
    _listener?.call();
  }

  void pause() async {
    await controller.pause();
  }

  void stop() async {
    await controller.pause();
  }

  void play() async {
    await controller.play();
  }

  void release() async {
    await controller.dispose();
  }
}
