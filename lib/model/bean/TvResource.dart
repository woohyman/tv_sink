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
    'https://live-k2301-kbp.1plus1.video/sport/smil:sport.smil/playlist.m3u8',
    'http://123tv-mx1.flex-cdn.net/index.m3u8',
    'https://simultv.s.llnwi.net/n4s4/2ANetwork/interlink.m3u8',
    'https://sc.id-tv.kz/1hd.m3u8'
  ];

  final _featuredTvLis = [
    'http://183.207.248.71/cntv/live1/donghuawg/donghuawg',
    'http://tx2play1.douyucdn.cn/live/20415rnWbjg6Ex1K.xs',
    'http://111.17.214.4:1935/live/xtys/playlist.m3u8',
    'http://39.134.66.66/PLTV/88888888/224/3221225644/index.m3u8'
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
