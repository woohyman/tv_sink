import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bugly/flutter_bugly.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tvSink/pages/update_dialog.dart';
import 'package:tvSink/util/log.dart';

import '../ad/TvBannerAd.dart';
import '../business/PlayControlManager.dart';
import '../model/bean/TvResource.dart';
import '../model/bean/data.dart';
import '../update/FlutterBuglyManager.dart';
import '../widgets/KeepAliveTest.dart';
import '../widgets/PlayerWrapper.dart';
import '../widgets/SliderLeft.dart';

class ScaffoldRoute extends StatefulWidget {
  const ScaffoldRoute({Key? key}) : super(key: key);

  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}

ItemScrollController _chineseController = ItemScrollController();
ItemScrollController _foreignController = ItemScrollController();

ItemScrollController? getScrollController(int _index) {
  if (_index == 0) {
    return _chineseController.isAttached ? null : _chineseController;
  } else if (_index == 1) {
    return _foreignController.isAttached ? null : _foreignController;
  } else {
    return null;
  }
}

ItemScrollController? getScrollController2(int _index) {
  if (_index == 0) {
    return _chineseController.isAttached ? _chineseController : null;
  } else if (_index == 1) {
    return _foreignController.isAttached ? _foreignController : null;
  } else {
    return null;
  }
}

class _ScaffoldRouteState extends State<ScaffoldRoute> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(0);
  PageController? _pageController;
  SharedPreferences? _preferences;
  late FlutterBuglyManager _flutterBuglyManager;

  final TvBannerAd myBanner = TvBannerAd();
  int _optType = 0;

  @override
  void initState() {
    super.initState();

    SharedPreferences.getInstance().then((value) => {
          _preferences = value,
        });

    PlayControlManager.instance.setPlayStateListener((int optType) => {
          setState(() => {
                logger.e("====> $_optType"),
                _optType = optType,
              })
        });

    FlutterNativeSplash.remove();
    _flutterBuglyManager = FlutterBuglyManager(context);
    _flutterBuglyManager.init().then((value) => {setState(() {})});

    _pageController = PageController();
    myBanner.load().then((value) => {setState(() => {})});
  }

  Widget getWidgetByPlatForm(int index, BuildContext context) {
    CommonData commonData = Provider.of<CommonData>(context, listen: true);
    var _tvList = chineseTvLis;
    switch (index) {
      case 0:
        _tvList = chineseTvLis;
        break;
      case 1:
        _tvList = foreignTvLis;
        break;
      case 2:
        _tvList = featuredTvLis;
        break;
    }

    Widget getImageProviderByUrl(int index, int innerIndex) {
      String url = commonData.getIconUrl(index, innerIndex);
      if (url.isEmpty) {
        return Image.asset(
          "images/tv_dianshi.png",
          width: 50.0,
          height: 50.0,
        );
      } else {
        return FadeInImage.assetNetwork(
            imageErrorBuilder: (context, error, stackTrace) {
              return Image.asset(
                "images/tv_dianshi.png",
                width: 50.0,
                height: 50.0,
              );
            },
            width: 50,
            height: 50.0,
            placeholder: "images/tv_dianshi.png",
            image: url);
      }
    }

    int _initTabIndex = 0;
    Position _position = commonData.getPositionByName();

    if (index == _position.tabIndex) {
      _initTabIndex = _position.listIndex;
    }

    List<String> _list = _preferences?.getStringList("xx") ?? [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child: ScrollablePositionedList.builder(
          addAutomaticKeepAlives: true,
          itemScrollController: getScrollController(index),
          initialScrollIndex: _initTabIndex,
          itemCount: _tvList.length,
          itemBuilder: (BuildContext context, int innerIndex) {
            List<DropdownMenuItem<String>>? myItems = [];
            Set sets = commonData.getSourceSet(index, innerIndex);
            sets.toList().asMap().forEach((key, value) {
              myItems.add(DropdownMenuItem<String>(
                value: value,
                child: Text("直播源${key + 1}"),
              ));
            });
            String tvName = getBeanByIndex(index, innerIndex);

            return Card(
              color: commonData.getTvName() == tvName
                  ? Colors.lightBlue.shade200
                  : Colors.lightBlue.shade100,
              //z轴的高度，设置card的阴影
              elevation: commonData.getTvName() == tvName ? 20.0 : 0.0,
              //设置shape，这里设置成了R角
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              //对Widget截取的行为，比如这里 Clip.antiAlias 指抗锯齿
              clipBehavior: Clip.antiAlias,
              semanticContainer: false,
              child: InkWell(
                  onTap: () async => {
                        _list.add(tvName),
                        _preferences?.setStringList("xx", _list),
                        PlayControlManager.instance.setResourceAndPlay(
                            await compute(getLiveSource, tvName), 1),
                        commonData.setTvChannel(tvName, index),
                      },
                  child: Padding(
                    child: Flex(
                      direction: Axis.horizontal,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Expanded(
                            flex: 1,
                            child: getImageProviderByUrl(index, innerIndex),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(
                            tvName,
                            style: commonData.getTvName() == tvName
                                ? TextStyle(color: Colors.red, fontSize: 18)
                                : TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Visibility(
                            visible: commonData
                                    .getSourceSet(index, innerIndex)
                                    .length >
                                1,
                            child: DropdownButton<String>(
                              value: getLiveSource(tvName),
                              onChanged: (value) {
                                setState(() {
                                  commonData.setLiveSource(tvName, value);
                                });
                              },
                              items: myItems,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.center,
                            child: InkWell(
                              onTap: () => {
                                setState(() {
                                  if (commonData.iscotain(tvName)) {
                                    commonData.removeurl(tvName);
                                  } else {
                                    commonData.addcollect(tvName);
                                  }
                                })
                              },
                              child: commonData.iscotain(tvName)
                                  ? Icon(Icons.favorite)
                                  : Icon(Icons.favorite_border),
                            ),
                          ),
                        ),
                      ],
                    ),
                    padding:
                        EdgeInsets.only(left: 0, right: 0, top: 12, bottom: 12),
                  )),
            );
          },
        ))
      ],
    );
  }

  @override
  void didChangeDependencies() {
    logger.e("_position ==> didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    CommonData commonData = Provider.of<CommonData>(context, listen: true);
    Position _position = commonData.getPositionByName();

    logger.e("====> build ==== ${commonData.getTvName()}");
    try {
      if (_optType < 0) {
        _selectedIndex.value = _position.tabIndex;
        _pageController?.jumpToPage(_position.tabIndex);
        getScrollController2(_position.tabIndex)
            ?.jumpTo(index: _position.listIndex);
        logger.e(
            "_position ==>${commonData.index} +> ${_position.tabIndex} : ${_position.listIndex} | ${getScrollController(_position.tabIndex)}");
      }
    } catch (err, stack) {
      logger.e("_position ==>$err : $stack");
    }

    return Scaffold(
        appBar: AppBar(
          title: myBanner.getBannerWidget(),
        ),
        drawer: SliderLeft(),
        body: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            PlayerWrapper(),
            Expanded(
              flex: 1,
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  _onItemTapped(index, context);
                },
                children: <Widget>[
                  KeepAliveWrapper(
                    child: getWidgetByPlatForm(0, context),
                    keepAlive: true,
                  ),
                  KeepAliveWrapper(
                    child: getWidgetByPlatForm(1, context),
                    keepAlive: true,
                  ),
                  KeepAliveWrapper(
                    child: getWidgetByPlatForm(2, context),
                    keepAlive: true,
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: ValueListenableBuilder<int>(
          builder: (BuildContext context, int value, Widget? child) {
            return BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.airplay), label: '中文频道'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.airplay), label: '英文频道'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.airplay), label: '收藏频道'),
              ],
              currentIndex: value,
              fixedColor: Colors.blue,
              onTap: (index) {
                _onItemTapped(index, context);
              },
            );
          },
          valueListenable: _selectedIndex,
        ));
  }

  void _onItemTapped(int index, BuildContext context) {
    _pageController?.jumpToPage(index);
    _selectedIndex.value = index;
  }
}
