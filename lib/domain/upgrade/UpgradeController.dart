import 'package:flutter/cupertino.dart';
import 'package:flutter_update_dialog/update_dialog.dart';
import 'package:open_file/open_file.dart';
import '../../util/file_util.dart';
import 'UpgradeDataProvider.dart';
import '../../data/net/UpgradeRepository.dart';

class UpgradeController {
  UpdateDialog? _dialog;
  final _upgradeRepository = UpgradeRepository();

  Future<bool> showDialog(BuildContext context) async {
    final _upgradeDataProvider = UpgradeDataProvider.fromGet();
    final needUpgrade = _upgradeDataProvider.needUpgrade.value;
    if (needUpgrade == null) {
      await _upgradeDataProvider.fetchVersion();
    }

    if (_dialog != null && _dialog!.isShowing()) {
      return false;
    }

    if (needUpgrade == true) {
      final apkUpgradeInfo = _upgradeDataProvider.apkVersion.value;
      _dialog = UpdateDialog.showUpdate(
        context,
        isForce: false,
        title: '是否升级到版本${apkUpgradeInfo?.versionName}?',
        updateContent: apkUpgradeInfo!.content,
        onUpdate: () async {
          final stream = await _upgradeRepository
              .launchUpdateUrlDialog(apkUpgradeInfo.url);
          stream.listen(
            (data) {
              switch (data) {
                case Downloading():
                  _dialog?.update(data.progress);
                case Success():
                  checkPermission().then((value) {
                    OpenFile.open(data.path,
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
