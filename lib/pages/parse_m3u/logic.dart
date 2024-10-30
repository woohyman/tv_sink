import 'package:get/get.dart';
import 'package:tv_sink/util/log.dart';

import '../../domain/DowloadController.dart';

class ParseM3uLogic extends GetxController {
  final _downloadController = DownloadController();
  final _downloadInfo = "".obs;

  get downloadInfo {
    return _downloadInfo.value;
  }

  void fetchRemoteData(String url) {
    _downloadController.fetchRemoteData(url).listen(
      (data) {
        _downloadInfo.value = data;
      },
    );
  }
}
