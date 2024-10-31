import 'package:package_info_plus/package_info_plus.dart';

class ApkInfoDataProvider {
  PackageInfo? _packageInfo;

  Future<void> fetchApkVersion() async {
    _packageInfo = await PackageInfo.fromPlatform();
  }

  int get versionCode {
    return int.parse(_packageInfo?.buildNumber ?? "0");
  }

  String? get versionName {
    return _packageInfo?.version;
  }
}
