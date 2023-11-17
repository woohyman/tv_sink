import 'package:youtube_api/youtube_api.dart';

class LiveSourceManager {
  static const String _key = "AIzaSyCoXPadhSmHKkJPKdBj735m5TeVqD4g_dE";
  static final YoutubeAPI _youtube = YoutubeAPI(_key, maxResults: 50);
  static List<YouTubeVideo> _videoResult = [];

  Future<void> initData() async {
    String query = "台湾 直播";
    _videoResult = await _youtube.search(
      query,
      order: 'relevance',
      videoDuration: 'any',
    );
    _videoResult.addAll(await _youtube.nextPage());

    _videoResult.forEach((element) {
      print("element.title == > "+element.title);
      print("element.url == > "+element.url.toString());
      print("element.id == > "+element.id.toString());
    });

  }

  List<YouTubeVideo> getVideoResult() {
    return _videoResult;
  }

  //第一种方式调用
  factory LiveSourceManager() {
    return instance;
  }

  //第二种方式调用
  static LiveSourceManager instance = LiveSourceManager._();

  LiveSourceManager._() {

  }
}
