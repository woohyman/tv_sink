import 'dart:io';

import 'package:dart_vlc/dart_vlc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../model/bean/TvResource.dart';
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

  @override
  void initState() {
    super.initState();
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

  Widget? getWidgetByPlatForm(int index, BuildContext context) {
    if (Platform.isAndroid || Platform.isIOS) {
      CommonData commonData = Provider.of<CommonData>(context, listen: true);
      var _tvList = commonData.chineseTvLis;
      switch (index) {
        case 0:
          _tvList = commonData.chineseTvLis;
          break;
        case 1:
          _tvList = commonData.foreignTvLis;
          break;
        case 2:
          _tvList = commonData.featuredTvLis;
          break;
      }
      return ListView.separated(
        itemCount: _tvList.length,
        itemBuilder: (BuildContext context, int index) {
          return PlayerWrapper(_tvList[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            color: Colors.blue,
          );
        },
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
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      drawer: const SliderLeft(),
      body: getWidgetByPlatForm(_selectedIndex, context),
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
