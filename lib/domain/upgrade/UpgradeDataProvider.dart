import 'package:get/get.dart';

import '../model/ApkUpgradeInfo.dart';
import 'ApkVersionDataProvider.dart';
import '../../data/net/UpgradeRepository.dart';

class UpgradeDataProvider {
  final _updateManager = UpgradeRepository();
  final _apkVersionManager = ApkVersionDataProvider();

  RxBool needUpgrade = RxBool(false);
  RxString remoteVersion = "".obs;
  RxString localVersion = "".obs;
  Rxn<ApkUpgradeInfo> apkVersion = Rxn<ApkUpgradeInfo>();

  factory UpgradeDataProvider.fromGet() {
    return Get.find<UpgradeDataProvider>();
  }

  UpgradeDataProvider() {
    fetchVersion();
  }

  Future<void> fetchVersion() async {
    await _apkVersionManager.fetchApkVersion();
    localVersion.value = _apkVersionManager.versionName ?? "";
    apkVersion.value = await _updateManager.fetchApkVersion();
    remoteVersion.value = apkVersion.value!.versionName;
    needUpgrade.value =
        apkVersion.value!.versionCode > _apkVersionManager.versionCode;
  }
}
