import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_update_dialog/update_dialog.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:universal_platform/universal_platform.dart';
import '../../data/net/DownloadRepository.dart';
import '../../util/file_util.dart';
import 'UpgradeDataProvider.dart';

class UpgradeController {
  UpdateDialog? _dialog;
  final _downloadRepository = DownloadRepository();

  factory UpgradeController.fromGet() {
    return Get.find<UpgradeController>();
  }

  void init(BuildContext context) {
    Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> results) async {
      showDialog(context);
    });
  }

  UpgradeController();

  Future<bool> showDialog(BuildContext context) async {
    if (UniversalPlatform.isWeb) {
      return false;
    }
    final _upgradeDataProvider = UpgradeDataProvider.fromGet();
    if (_upgradeDataProvider.needUpgrade.value == null) {
      await _upgradeDataProvider.fetchVersion();
    }

    if (_dialog != null && _dialog!.isShowing()) {
      return false;
    }

    if (_upgradeDataProvider.needUpgrade.value == true) {
      final apkUpgradeInfo = _upgradeDataProvider.apkVersion.value;
      _dialog = UpdateDialog.showUpdate(
        context,
        isForce: true,
        title: '升级到版本${apkUpgradeInfo?.versionName}',
        updateContent: apkUpgradeInfo!.content,
        onUpdate: () async {
          final stream =
              await _downloadRepository.downloadToFile(apkUpgradeInfo.url);
          stream.listen(
            (data) {
              switch (data) {
                case Downloading():
                  _dialog
                      ?.update(data.count.toDouble() / data.total.toDouble());
                case Success():
                  checkPermission().then((value) {
                    OpenFile.open(data.data,
                        type: "application/vnd.android.package-archive");
                  });
                  _dialog?.dismiss();
                case Error():
                  _dialog?.dismiss();
              }
            },
          );
        },
      );
    }

    return true;
  }
}
