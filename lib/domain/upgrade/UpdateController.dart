import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:retry/retry.dart';
import 'package:supabase/supabase.dart';

import 'package:flutter_update_dialog/update_dialog.dart';

import '../../pages/UpdateDialog.dart';

class UpdateController {
  PostgrestMap? data;

  Future<PostgrestMap?> fetchApkVersion() async {
    final response = await _fetchApkVersion();
    data = response.last;
    print('fetchApkVersion======> $data');
    return data;
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
    final supabase = Get.find<SupabaseClient>();
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
    final file = await _localFile;
    Dio().download(
      downloadUrl,
      file.path,
      onReceiveProgress: (int count, int total) {
        EasyLoading.showProgress(count.toDouble()/total.toDouble(), status: '下载中,请稍后');
      },
    ).then((value) {
      EasyLoading.dismiss();
      if (value.statusCode == 200) {
        checkPermission().then((value) {
          OpenFile.open(file.path,
              type: "application/vnd.android.package-archive");
        });
      }
    }).catchError((e) {

    });
  }

  Future<void> launchUpdateUrlDialog(UpdateDialog? dialog) async {
    dialog!.update(0);
    final file = await _localFile;
    Dio().download(
      downloadUrl,
      file.path,
      onReceiveProgress: (int count, int total) {
        dialog.update(count.toDouble()/total.toDouble());
      },
    ).then((value) {
      EasyLoading.dismiss();
      if (value.statusCode == 200) {
        checkPermission().then((value) {
          dialog.dismiss();
          OpenFile.open(file.path,
              type: "application/vnd.android.package-archive");
        });
      }
    }).catchError((e) {

    });
  }
}

Future<String> get _localPath async {
  final _path = await getTemporaryDirectory();
  return _path.path;
}

Future<File> get _localFile async {
  final path = await _localPath;
  return File('$path/apk');
}
