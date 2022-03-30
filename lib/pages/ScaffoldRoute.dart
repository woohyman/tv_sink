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

  PageController? _pageController;
  late Player player;
  late Media media2;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    if (Platform.isWindows) {
      player = Player(id: 69420);
      media2 =
          Media.network('http://tx2play1.douyucdn.cn/live/20415rnWbjg6Ex1K.xs');
      player.open(
        media2,
        autoStart: false,
      );
    }
  }

  Widget getWidgetByPlatForm(int index, BuildContext context) {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        PlayerWrapper(_tvList[0]),
        Expanded(
            child: ListView.separated(
          itemCount: _tvList.length,
          itemBuilder: (BuildContext context, int index) {
            return Consumer<CommonData>(builder: (ctx, commonData, child){
              return InkWell(
                  onTap: () => {commonData.setTvChannel(_tvList[index].split(",")[1])},
                  child: Text(_tvList[index].split(",")[0])
              );
            });
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              color: Colors.blue,
            );
          },
        ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      drawer: const SliderLeft(),
      body: PageView(
        controller: _pageController,
        onPageChanged: _onItemTapped,
        children: <Widget>[
          getWidgetByPlatForm(0, context),
          getWidgetByPlatForm(1, context),
          getWidgetByPlatForm(2, context)
        ],
      ),
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
    _pageController?.jumpToPage(index);
    setState(() {
      _selectedIndex = index;
    });
  }
}
