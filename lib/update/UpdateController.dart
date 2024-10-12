import 'dart:async';
import 'dart:io';

import 'package:retry/retry.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class UpdateController {
  PostgrestMap? data;

  Future<void> fetchApkVersion() async {
    final response = await _fetchApkVersion();
    data = response.last;
    print('fetchApkVersion======> $data');
  }

  String get versionName {
    return data?["version_name"] ?? "";
  }

  String get downloadUrl {
    return data?["url"] ?? "";
  }

  int get versionCode {
    return data?["version_code"] ?? 0;
  }

  Future<PostgrestList> _fetchApkVersion() async {
    print('开始======> ');
    final supabase = Supabase.instance.client;
    final data = supabase
        .from("upgrade")
        .select()
        .order('version_code', ascending: true);
    const r = RetryOptions(maxAttempts: 10000);
    final response = await r.retry(
      () => data.timeout(const Duration(seconds: 5)),
      retryIf: (e) => e is SocketException || e is TimeoutException,
      onRetry: (e) => print('重试======> '),
    );
    return response;
  }

  Future<void> launchUpdateUrl() async {
    print('获取升级数据======> ' + downloadUrl);
    final Uri _url = Uri.parse(downloadUrl);

    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
