import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

class CommonData with ChangeNotifier {
  final _chineseTvLis = [
    'http://112.25.48.68/live/program/live/nxws/1300000/mnf.m3u8',
    'http://tx2play1.douyucdn.cn/live/20415rnWbjg6Ex1K.xs',
    'http://39.134.115.163:8080/PLTV/88888910/224/3221225745/index.m3u8',
    'http://39.134.66.66/PLTV/88888888/224/3221225613/index.m3u8'
  ];

  final _foreignTvLis = [
    'http://112.25.48.68/live/program/live/nxws/1300000/mnf.m3u8',
    'http://tx2play1.douyucdn.cn/live/20415rnWbjg6Ex1K.xs',
    'http://39.134.115.163:8080/PLTV/88888910/224/3221225745/index.m3u8',
    'http://39.134.66.66/PLTV/88888888/224/3221225613/index.m3u8'
  ];

  final _featuredTvLis = [
    'http://112.25.48.68/live/program/live/nxws/1300000/mnf.m3u8',
    'http://tx2play1.douyucdn.cn/live/20415rnWbjg6Ex1K.xs',
    'http://39.134.115.163:8080/PLTV/88888910/224/3221225745/index.m3u8',
    'http://39.134.66.66/PLTV/88888888/224/3221225613/index.m3u8'
  ];

  get featuredTvLis => _featuredTvLis;
  get foreignTvLis => _foreignTvLis;
  get chineseTvLis => _chineseTvLis;

  String _tvChannel = "";

  void setTvChannel(String channel) {
    _tvChannel = channel;
    notifyListeners();
  }

  String getTvChannel() {
    return _tvChannel;
  }
}
