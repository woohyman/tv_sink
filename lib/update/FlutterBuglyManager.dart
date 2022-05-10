import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bugly/flutter_bugly.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tvSink/util/log.dart';

import '../pages/UpdateDialog.dart';

class FlutterBuglyManager {
  final GlobalKey<UpdateDialogState> _dialogKey = GlobalKey();
  String _platformVersion = 'Unknown';
  int _versionCode = 0;
  String _versionName = "";

  String get versionName => _versionName;
  int get versionCode => _versionCode;
  String get platformVersion => _platformVersion;

  factory FlutterBuglyManager() {
    return instance;
  }

  //第二种方式调用
  static FlutterBuglyManager instance = FlutterBuglyManager._();

  FlutterBuglyManager._();

  Future<InitResultInfo> init(BuildContext _buildContext) async {
    InitResultInfo _initResult = await FlutterBugly.init(
      androidAppId: "8c6adf8a82",
      customUpgrade: true, // 调用 Android 原生升级方式
    );

    // 当配置 customUpgrade=true 时候，这里可以接收自定义升级
    FlutterBugly.onCheckUpgrade.listen((_upgradeInfo) {
      _platformVersion = _upgradeInfo.newFeature;
      _showUpdateDialog(
        _buildContext,
        _upgradeInfo.newFeature,
        _upgradeInfo.apkUrl!,
        _upgradeInfo.upgradeType == 2,
      );
    });

    UpgradeInfo? upgradeInfo = await FlutterBugly.getUpgradeInfo();
    _versionCode = upgradeInfo?.versionCode ?? 0;
    _versionName = upgradeInfo?.versionName ?? "";

    return _initResult;
  }

  void _showUpdateDialog(BuildContext _buildContext, String version, String url, bool isForceUpgrade) {
    showDialog(
      barrierDismissible: false,
      context: _buildContext,
      builder: (_) => _buildDialog(version, url, isForceUpgrade),
    );
  }

  void checkUpgrade() {
    FlutterBugly.checkUpgrade(isManual: false, isSilence: true);
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
    response = await dio.download(url, root.path + '/temp.apk', onReceiveProgress: (received, total) {
      _dialogKey.currentState?.progress = received / total;
    });
    if (response.statusCode == 200) {
      //防止打印日志不全。
      await OpenFile.open(root.path + '/temp.apk');
    }
  }

  /// Dio 可以监听下载进度，调用此方法
  void _updateProgress(_progress) {
    _dialogKey.currentState!.progress = _progress;
  }
}
