import 'dart:async';
import 'dart:io';
import 'package:retry/retry.dart';
import '../../model/upgrade_apk_info.dart';
import '../base/base_supabase.dart';

class UpgradeRepository extends BaseSupabase {
  Future<UpgradeApkInfo> fetchApkVersion() async {
    final response = await _fetchApkVersion();
    return response.last;
  }

  Future<List<UpgradeApkInfo>> _fetchApkVersion() async {
    final data = upgradeBuilder.select().order('version_code', ascending: true);
    const r = RetryOptions(maxAttempts: 10000);
    final response = await r.retry(
      () => data.timeout(const Duration(seconds: 5)),
      retryIf: (e) => e is SocketException || e is TimeoutException,
      onRetry: (e) => {},
    );
    final defaultTvList = <UpgradeApkInfo>[];

    for (var item in response) {
      defaultTvList.add(UpgradeApkInfo.fromJson(item));
    }
    return defaultTvList;
  }
}
