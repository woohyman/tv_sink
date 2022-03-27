import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:tvSink/util/log.dart';

class PlayControlManager {
  PlayControlManager._();
  //第一种方式调用
  factory PlayControlManager() {
    return instance;
  }
  //第二种方式调用
  static PlayControlManager instance = PlayControlManager._();

  final _controls = <String,VlcPlayerController>{};

  void setCurTvChannel(String dataSource,VlcPlayerController vlcPlayerController){
    _controls[dataSource] = vlcPlayerController;
  }

  void playCurTv(String dataSource){
    _controls.forEach((key, controller) {
      // try{
      //   if(dataSource != key){
      //     controller.dispose();
      //   }
      // }catch(err){
      //   logger.e("err = $err");
      // }
      _controls[dataSource]?.play();
    });
  }

  VlcPlayerController? getCurController(String dataSource){
    return _controls[dataSource];
  }
}