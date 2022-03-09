import 'dart:io';

import 'package:dart_vlc/dart_vlc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';

import '../widgets/PlayerWrapper.dart';
import '../widgets/SliderLeft.dart';

class ScaffoldRoute extends StatefulWidget {
  const ScaffoldRoute({Key? key}) : super(key: key);

  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<ScaffoldRoute> {
  int _selectedIndex = 1;

  late Player player;
  late Media media2;

  final videoSourceList1 = [
    'http://112.25.48.68/live/program/live/nxws/1300000/mnf.m3u8',
    'http://tx2play1.douyucdn.cn/live/20415rnWbjg6Ex1K.xs',
    'http://39.134.115.163:8080/PLTV/88888910/224/3221225745/index.m3u8',
    'http://39.134.66.66/PLTV/88888888/224/3221225613/index.m3u8'
  ];

  @override
  void initState() {
    super.initState();
    print("== initState ==");

    if (Platform.isWindows) {
      player = Player(id: 69420);
      media2 =
          Media.network('http://tx2play1.douyucdn.cn/live/20415rnWbjg6Ex1K.xs');
      player.open(
        media2,
        autoStart: true,
      );
    }
  }

  Widget? getWidgetByPlatForm(int index) {
    if (Platform.isAndroid || Platform.isIOS) {
      print("index $index");
      switch (index) {
        case 0:
          Widget divider1 = const Divider(
            color: Colors.blue,
          );
          return ListView.separated(
            itemCount: videoSourceList1.length,
            itemBuilder: (BuildContext context, int index) {
              return PlayerWrapper(videoSourceList1[index]);
            },
            separatorBuilder: (BuildContext context, int index) {
              return divider1;
            },
          );
        case 1:
          return PlayerWrapper("http://tx2play1.douyucdn.cn/live/20415rnWbjg6Ex1K.xs");
        case 2:
          return PlayerWrapper("http://tx2play1.douyucdn.cn/live/20415rnWbjg6Ex1K.xs");
      }

    } else if (Platform.isWindows) {
      return Video(
        player: player,
        height: 1920.0,
        width: 1080.0,
        scale: 1.0,
        // default
        showControls: false, // default
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      drawer: const SliderLeft(),
      body: getWidgetByPlatForm(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.airplay), label: '中文频道'),
          BottomNavigationBarItem(icon: Icon(Icons.airplay), label: '外文频道'),
          BottomNavigationBarItem(icon: Icon(Icons.airplay), label: '精选频道'),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onAdd() {}
}
