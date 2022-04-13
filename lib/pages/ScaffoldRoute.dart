import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bugly/flutter_bugly.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tvSink/pages/update_dialog.dart';
import 'package:tvSink/util/log.dart';

import '../ad/TvBannerAd.dart';
import '../model/bean/TvResource.dart';
import '../widgets/PlayerWrapper.dart';
import '../widgets/SliderLeft.dart';

class ScaffoldRoute extends StatefulWidget {
  const ScaffoldRoute({Key? key}) : super(key: key);

  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<ScaffoldRoute> {
  int _selectedIndex = 0;
  PageController? _pageController;
  String _platformVersion = 'Unknown';
  GlobalKey<UpdateDialogState> _dialogKey = new GlobalKey();

  final TvBannerAd myBanner = TvBannerAd();

  void _showUpdateDialog(String version, String url, bool isForceUpgrade) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) => _buildDialog(version, url, isForceUpgrade),
    );
  }

  void _checkUpgrade() {
    print("获取更新中。。。");
    FlutterBugly.checkUpgrade();
  }

  Widget _buildDialog(String version, String url, bool isForceUpgrade) {
    return WillPopScope(
      onWillPop: () async => isForceUpgrade,
      child: UpdateDialog(
        key: _dialogKey,
        version: version,
        onClickWhenDownload: (_msg) {
          // 提示不要重复下载
        },
        onClickWhenNotDownload: () {
          logger.e("更新功能 =====> " + url);
          logger.e("更新版本 =====> " + version);
          //下载 apk，完成后打开 apk 文件，建议使用 dio + open_file 插件
          downloadfile(url);
        },
      ),
    );
  }

  Future<void> downloadfile(String url) async {
    Response response;
    var dio = Dio();
    Directory root = await getTemporaryDirectory();
    response = await dio.download(url, root.path + '/111.apk',
        onReceiveProgress: (received, total) {
      logger.i('received $received');
      _dialogKey.currentState?.progress = received / total;
    });
    if (response.statusCode == 200) {
      logger.i('下载成功');
      //防止打印日志不全。
      await OpenFile.open(root.path + '/111.apk');
    }
  }

  /// Dio 可以监听下载进度，调用此方法
  void _updateProgress(_progress) {
    setState(() {
      _dialogKey.currentState!.progress = _progress;
    });
  }

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((value) => {
          _preferences = value,
        });

    FlutterNativeSplash.remove();
    FlutterBugly.init(
      androidAppId: "8c6adf8a82",
      customUpgrade: true, // 调用 Android 原生升级方式
    ).then((_result) {
      setState(() {
        _platformVersion = _result.message;
        print(_result.appId);
      });
    });
    // 当配置 customUpgrade=true 时候，这里可以接收自定义升级
    FlutterBugly.onCheckUpgrade.listen((_upgradeInfo) {
      _showUpdateDialog(
        _upgradeInfo.newFeature,
        _upgradeInfo.apkUrl!,
        _upgradeInfo.upgradeType == 2,
      );
    });

    _pageController = PageController();
    myBanner.load().then((value) => {setState(() => {})});
  }

  SharedPreferences? _preferences;

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

    Widget getImageProviderByUrl(int index, int innerIndex) {
      String url = commonData.getIconUrl(index, innerIndex);
      if (index == 2) {
        logger.e("名字 -》 " +
            commonData.getBeanByIndex(index, innerIndex) +
            " : " +
            url);
      }

      if (url.isEmpty) {
        return Image.asset(
          "images/tv_dianshi.png",
          width: 50.0,
        );
      } else {
        return FadeInImage.assetNetwork(
            imageErrorBuilder: (context, error, stackTrace) {
              return Image.asset(
                "images/tv_dianshi.png",
                width: 50.0,
              );
            },
            width: 50,
            placeholder: "images/tv_dianshi.png",
            image: url);
      }
    }

    List<String> _list = _preferences?.getStringList("xx") ?? [];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        PlayerWrapper(commonData.getDefaultSource(index), index),
        Expanded(
            child: ListView.builder(
          // padding: EdgeInsets.only(left: 0, right: 0, top: 50, bottom: 50),
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

            return Card(
              color: commonData.getTvName() ==
                      commonData.getBeanByIndex(index, innerIndex)
                  ? Colors.lightBlue.shade200
                  : Colors.lightBlue.shade100,
              //z轴的高度，设置card的阴影
              elevation: commonData.getTvName() ==
                      commonData.getBeanByIndex(index, innerIndex)
                  ? 20.0
                  : 0.0,
              //设置shape，这里设置成了R角
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              //对Widget截取的行为，比如这里 Clip.antiAlias 指抗锯齿
              clipBehavior: Clip.antiAlias,
              semanticContainer: false,
              child: InkWell(
                  onTap: () => {
                        _list.add(commonData.getBeanByIndex(index, innerIndex)),
                        _preferences?.setStringList("xx", _list),
                        commonData.setTvChannel(
                            commonData.getBeanByIndex(index, innerIndex),
                            index),
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
                            commonData.getBeanByIndex(index, innerIndex),
                            style: commonData.getTvName() ==
                                    commonData.getBeanByIndex(index, innerIndex)
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
                              value: commonData.getLiveSource(
                                  commonData.getBeanByIndex(index, innerIndex)),
                              onChanged: (value) {
                                setState(() {
                                  commonData.setLiveSource(
                                      commonData.getBeanByIndex(
                                          index, innerIndex),
                                      value);
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
                                  if (commonData.iscotain(commonData
                                      .getBeanByIndex(index, innerIndex))) {
                                    commonData.removeurl(commonData
                                        .getBeanByIndex(index, innerIndex));
                                  } else {
                                    commonData.addcollect(commonData
                                        .getBeanByIndex(index, innerIndex));
                                  }
                                })
                              },
                              child: commonData.iscotain(commonData
                                      .getBeanByIndex(index, innerIndex))
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: myBanner.getBannerWidget(),
      ),
      drawer: SliderLeft(),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          _onItemTapped(index, context);
        },
        children: <Widget>[
          getWidgetByPlatForm(0, context),
          getWidgetByPlatForm(1, context),
          getWidgetByPlatForm(2, context)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.airplay), label: '中文频道'),
          BottomNavigationBarItem(icon: Icon(Icons.airplay), label: '精选频道'),
          BottomNavigationBarItem(icon: Icon(Icons.airplay), label: '收藏频道'),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: (index) {
          _onItemTapped(index, context);
        },
      ),
    );
  }

  void _onItemTapped(int index, BuildContext context) {
    CommonData commonData = Provider.of<CommonData>(context, listen: false);
    commonData.switchTab(index);
    _pageController?.jumpToPage(index);
    setState(() {
      _selectedIndex = index;
    });
  }
}
