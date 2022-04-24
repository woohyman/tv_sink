import 'package:fijkplayer/fijkplayer.dart';
import '../util/const.dart';
import 'EventBus.dart';

class PlayControlManager {
  final FijkPlayer _player = FijkPlayer();
  String curDataSource = "";
  bool _afterFirstPress = false;

  bool get afterFirstPress => _afterFirstPress;

  PlayControlManager._();

  //第一种方式调用
  factory PlayControlManager() {
    return instance;
  }

  //第二种方式调用
  static PlayControlManager instance = PlayControlManager._();

  void setResourceAndPlay(String source) async{

    bus.emit(startPlayTv,true);
    _afterFirstPress = true;
    await _player.reset();
    await _player.setDataSource(source, autoPlay: false);
    await _player.prepareAsync();

  }

  void pause() async {
    await _player.pause();
  }

  void play() async {
    await _player.start();
  }

  void release() async {
    await _player.release();
  }

  FijkPlayer getPlayer() {
    return _player;
  }
}
