import 'dart:io';

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
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
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
        PlayerWrapper(_tvList[0],index),
        Expanded(
            child: ListView.separated(
          itemCount: _tvList.length,
          itemBuilder: (BuildContext context, int innerIndex) {
            List array = _tvList[innerIndex].split(",");
            String name = _tvList[innerIndex].split(",")[0];
            String url = array.length > 1 ? _tvList[innerIndex].split(",")[1] : name;
            return InkWell(
                onTap: () => {commonData.setTvChannel(url,index)},
                child: Text(
                  name,
                  style: commonData.getTvChannel() == url
                      ? TextStyle(color: Colors.red, fontSize: 18)
                      : TextStyle(color: Colors.black, fontSize: 14),
                ));
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
