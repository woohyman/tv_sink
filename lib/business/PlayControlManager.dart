import 'package:fijkplayer/fijkplayer.dart';
import 'package:tvSink/util/log.dart';

class PlayControlManager {
  final FijkPlayer _player = FijkPlayer();
  String curDataSource = "";

  PlayControlManager._();

  //第一种方式调用
  factory PlayControlManager() {
    return instance;
  }

  //第二种方式调用
  static PlayControlManager instance = PlayControlManager._();

  void setResourceAndPlay(String source,int optType) {
    logger.e("====> $source");
    _player.reset().then((value) =>
    {
      _player
          .setDataSource(source, autoPlay: true)
          .then((value) => {_player.start()}),
    });
    _onChange!(optType);
  }
  Function(int)? _onChange;
  void setPlayStateListener(Function(int) onChange) {
    _onChange = onChange;
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
