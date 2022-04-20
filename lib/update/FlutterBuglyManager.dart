import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bugly/flutter_bugly.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

import '../pages/update_dialog.dart';
import '../util/log.dart';

class FlutterBuglyManager{
  String _platformVersion = 'Unknown';
  final BuildContext _buildContext;
  GlobalKey<UpdateDialogState> _dialogKey = new GlobalKey();

  FlutterBuglyManager(this._buildContext);

  Future<InitResultInfo> init(){
    Future<InitResultInfo> _future = FlutterBugly.init(
      androidAppId: "8c6adf8a82",
      customUpgrade: true, // 调用 Android 原生升级方式
    );
    _future.then((_result) {
      // 当配置 customUpgrade=true 时候，这里可以接收自定义升级
      FlutterBugly.onCheckUpgrade.listen((_upgradeInfo) {
        _showUpdateDialog(
          _upgradeInfo.newFeature,
          _upgradeInfo.apkUrl!,
          _upgradeInfo.upgradeType == 2,
        );
      });
      _platformVersion = _result.message;
      print(_result.appId);
    });
    return _future;
  }

  void _showUpdateDialog(String version, String url, bool isForceUpgrade) {
    showDialog(
      barrierDismissible: false,
      context: _buildContext,
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
    _dialogKey.currentState!.progress = _progress;
  }
}