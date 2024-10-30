import 'dart:async';

import 'package:tv_sink/domain/parse/ParseTxtSourceToList.dart';

import '../data/net/DownloadRepository.dart';

class DownloadController {
  final _downloadRepository = DownloadRepository();

  Stream<String> fetchRemoteData(String url) {
    var _controller = StreamController<String>();
    final stream = _downloadRepository.downloadToData(url);
    stream.listen(
      (data) {
        switch (data) {
          case Downloading():
            if (data.count == 0) {
              _controller.add("开始下载...");
            } else if (data.total < 0) {
              _controller.add("进度:${data.count}");
            } else {
              final progress = data.count.toDouble() / data.total.toDouble();
              _controller.add("进度:${(progress * 100).truncate()}%");
            }
          case Success():
            _controller.add("下载数据成功,开始解析数据");
            parseData(data.data);
            _controller.add("已读取至列表");
            _controller.close();
          case Error():
            _controller.add("失败:${data.message}");
            _controller.close();
        }
      },
    );
    return _controller.stream;
  }
}
