import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bugly/flutter_bugly.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tvSink/pages/update_dialog.dart';
import 'package:tvSink/util/log.dart';

import '../business/AppOpenAdManager.dart';
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
    List<String> _list = _preferences?.getStringList("xx") ?? [];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        PlayerWrapper(_tvList[0], index),
        Expanded(
            child: ListView.separated(
          // padding: EdgeInsets.only(left: 0, right: 0, top: 50, bottom: 50),
          itemCount: _tvList.length,
          itemBuilder: (BuildContext context, int innerIndex) {
            List array = _tvList[innerIndex].split(",");
            String name = _tvList[innerIndex].split(",")[0];
            String url =
                array.length > 1 ? _tvList[innerIndex].split(",")[1] : name;
            return InkWell(
                onTap: () => {
                      _list.add(_tvList[innerIndex]),
                      _preferences?.setStringList("xx", _list),
                      commonData.setTvChannel(url, index),
                    },
                child: Padding(
                  child: Flex(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Text(
                        name,
                        style: commonData.getTvChannel() == url
                            ? TextStyle(color: Colors.red, fontSize: 18)
                            : TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () => {
                              setState(() {
                                if (commonData.iscotain(_tvList[innerIndex])) {
                                  commonData.removeurl(_tvList[innerIndex]);
                                } else {
                                  commonData.addcollect(_tvList[innerIndex]);
                                }
                              })
                            },
                            child: commonData.iscotain(_tvList[innerIndex])
                                ? Icon(Icons.favorite)
                                : Icon(Icons.favorite_border),
                          ),
                        ),
                      ),
                    ],
                  ),
                  padding:
                      EdgeInsets.only(left: 0, right: 0, top: 12, bottom: 12),
                ));
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              height: 2,
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
