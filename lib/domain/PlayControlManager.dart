import 'package:event_bus/event_bus.dart';
import 'package:fijkplayer/fijkplayer.dart';
import '../util/const.dart';

class PlayControlManager {
  final FijkPlayer _player = FijkPlayer();
  String curDataSource = "";
  bool _afterFirstPress = false;

  bool get afterFirstPress => _afterFirstPress;
  int _preSnapTime = -1;
  final Map<String, bool> _intervalTime = {};

  Map<String, bool> get intervalTime => _intervalTime;

  PlayControlManager._() {
    _player.addListener(() {
      if (FijkState.initialized == _player.state && _preSnapTime<0) {
        _preSnapTime = DateTime.now().millisecondsSinceEpoch;
      } else if (FijkState.started == _player.state && _preSnapTime > 0) {
        int _interval = DateTime.now().millisecondsSinceEpoch - _preSnapTime;
        _intervalTime[_player.dataSource ?? ""] = _interval < 2000;
        _preSnapTime = -1;
      }
    });
  }

  //第一种方式调用
  factory PlayControlManager() {
    return instance;
  }

  //第二种方式调用
  static PlayControlManager instance = PlayControlManager._();

  void setResourceAndPlay(String tvName, String source) async {
    print("..................... $source");
    bool _autoPlay = _intervalTime[source] ?? true;
    eventBus.fire(const MapEntry(startPlayTv, true));
    _afterFirstPress = true;
    await _player.reset();
    await _player.setDataSource(source,autoPlay: false);
    await _player.prepareAsync();
    if(_autoPlay){
      _player.start();
    }

  }

  void pause() async {
    await _player.pause();
  }

  void stop() async {
    await _player.stop();
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
