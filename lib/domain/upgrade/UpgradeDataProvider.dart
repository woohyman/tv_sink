import 'package:get/get.dart';

import '../model/ApkUpgradeInfo.dart';
import 'ApkVersionDataProvider.dart';
import '../../data/net/UpgradeRepository.dart';

class UpgradeDataProvider {
  final _updateManager = UpgradeRepository();
  final _apkVersionManager = ApkVersionDataProvider();

  RxnBool needUpgrade = RxnBool(null);
  RxString remoteVersion = "".obs;
  RxString localVersion = "".obs;
  Rxn<ApkUpgradeInfo> apkVersion = Rxn<ApkUpgradeInfo>();

  factory UpgradeDataProvider.fromGet() {
    return Get.find<UpgradeDataProvider>();
  }

  factory UpgradeDataProvider.preFetchData() {
    final _upgradeController = UpgradeDataProvider._();
    _upgradeController.fetchVersion();
    return _upgradeController;
  }

  UpgradeDataProvider._();

  Future<void> fetchVersion() async {
    await _apkVersionManager.fetchApkVersion();
    localVersion.value = _apkVersionManager.versionName ?? "";
    apkVersion.value = await _updateManager.fetchApkVersion();
    remoteVersion.value = apkVersion.value!.versionName;
    needUpgrade.value =
        apkVersion.value!.versionCode > _apkVersionManager.versionCode;
  }
}
