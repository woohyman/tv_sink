import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:retry/retry.dart';
import 'package:supabase/supabase.dart';

import 'package:tv_sink/util/log.dart';

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

  Future<Stream<Status>> launchUpdateUrlDialog(String url) async {
    var _controller = StreamController<Status>();
    _controller.add(Downloading(0));
    final file = await localFile;
    Dio().download(
      url,
      file.path,
      onReceiveProgress: (int count, int total) {
        _controller.add(Downloading(count.toDouble() / total.toDouble()));
      },
    ).then((value) {
      EasyLoading.dismiss();
      if (value.statusCode == 200) {
        _controller.add(Success(file.path));
        _controller.close();
      }
    }).catchError((e) {
      _controller.add(Error(e));
      _controller.close();
    });

    return _controller.stream;
  }
}

sealed class Status {}

class Downloading extends Status {
  final double progress;

  Downloading(this.progress);
}

class Success extends Status {
  final String path;

  Success(this.path);
}

class Error extends Status {
  final String message;

  Error(this.message);
}
