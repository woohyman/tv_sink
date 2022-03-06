import 'dart:io';

import 'package:dart_vlc/dart_vlc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';

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
  late VlcPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();

    if (Platform.isAndroid || Platform.isIOS) {
      _videoPlayerController = VlcPlayerController.network(
        'https://al-pull2.hkatv.vip/live/hktv20210929.m3u8',
        hwAcc: HwAcc.full,
        autoPlay: true,
        options: VlcPlayerOptions(),
      );
    } else if (Platform.isWindows) {
      player = Player(id: 69420);
      media2 =
          Media.network('http://tx2play1.douyucdn.cn/live/20415rnWbjg6Ex1K.xs');
      player.open(
        media2,
        autoStart: true,
      );
    }
  }

  Widget? getWidgetByPlatForm() {
    if (Platform.isAndroid || Platform.isIOS) {
      return VlcPlayer(
        controller: _videoPlayerController,
        aspectRatio: 16 / 9,
        placeholder: const Center(child: CircularProgressIndicator()),
      );
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
        title: const Text("电视汇"),
      ),
      drawer: const SliderLeft(),
      body: getWidgetByPlatForm(),
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
