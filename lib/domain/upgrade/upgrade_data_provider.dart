import 'package:get/get.dart';
import '../../data/model/upgrade_apk_info.dart';
import 'apk_info_data_provider.dart';
import '../../data/net/supabase/upgrade_repository.dart';

class UpgradeDataProvider {
  final _updateManager = UpgradeRepository();
  final _apkInfoDataProvider = ApkInfoDataProvider();

  RxBool needUpgrade = RxBool(false);
  RxString remoteVersion = "".obs;
  RxString localVersion = "".obs;
  Rxn<UpgradeApkInfo> apkVersion = Rxn<UpgradeApkInfo>();

  factory UpgradeDataProvider.fromGet() {
    return Get.find<UpgradeDataProvider>();
  }

  UpgradeDataProvider() {
    fetchVersion();
  }

  Future<void> fetchVersion() async {
    await _apkInfoDataProvider.fetchApkVersion();
    localVersion.value = _apkInfoDataProvider.versionName ?? "";
    apkVersion.value = await _updateManager.fetchApkVersion();
    remoteVersion.value = apkVersion.value!.version_name;
    needUpgrade.value =
        apkVersion.value!.version_code > _apkInfoDataProvider.versionCode;
  }
}
