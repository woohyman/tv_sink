import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:retry/retry.dart';
import 'package:supabase/supabase.dart';
import '../../domain/model/ApkUpgradeInfo.dart';
import '../../util/file_util.dart';

class UpgradeRepository {
  Future<ApkUpgradeInfo> fetchApkVersion() async {
    final response = await _fetchApkVersion();
    final data = response.last;
    return ApkUpgradeInfo(
      data["version_name"],
      data["content"],
      data["url"],
      data["version_code"],
    );
  }

  Future<PostgrestList> _fetchApkVersion() async {
    final supabase = Get.find<SupabaseClient>();
    final data = supabase
        .from("upgrade")
        .select()
        .order('version_code', ascending: true);
    const r = RetryOptions(maxAttempts: 10000);
    final response = await r.retry(
      () => data.timeout(const Duration(seconds: 5)),
      retryIf: (e) => e is SocketException || e is TimeoutException,
      onRetry: (e) => {},
    );
    return response;
  }
}
