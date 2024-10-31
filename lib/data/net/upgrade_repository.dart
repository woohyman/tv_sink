import 'dart:async';
import 'dart:io';
import 'package:retry/retry.dart';
import 'package:supabase/supabase.dart';
import '../model/upgrade_apk_version.dart';
import 'base/base_supabase.dart';

class UpgradeRepository extends BaseSupabase {
  Future<UpgradeApkVersion> fetchApkVersion() async {
    final response = await _fetchApkVersion();
    final data = response.last;

    return UpgradeApkVersion.fromJson(data);
  }

  Future<PostgrestList> _fetchApkVersion() async {
    final data = upgradeBuilder.select().order('version_code', ascending: true);
    const r = RetryOptions(maxAttempts: 10000);
    final response = await r.retry(
      () => data.timeout(const Duration(seconds: 5)),
      retryIf: (e) => e is SocketException || e is TimeoutException,
      onRetry: (e) => {},
    );
    return response;
  }
}
