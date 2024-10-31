import 'dart:async';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../../util/file_util.dart';
import 'base/base_dio.dart';

class DownloadRepository extends BaseDio {

  Stream<Status> downloadToData(String url) {
    var _controller = StreamController<Status>();
    _controller.add(Downloading(0, 0));

    newDio.request(url, onReceiveProgress: (int count, int total) {
      _controller.add(Downloading(count, total));
    }).then((item) {
      if (item.statusCode == 200) {
        _controller.add(Success(item.data));
        _controller.close();
      } else {
        _controller.addError("错误代码:${item.statusCode}");
        _controller.close();
      }
    }).catchError((error) {
      _controller.addError(error);
      _controller.close();
    });

    return _controller.stream;
  }

  Future<Stream<Status>> downloadToFile(String url) async {

    var _controller = StreamController<Status>();
    _controller.add(Downloading(0, 0));
    final file = await localFile;
    newDio.download(
      url,
      file.path,
      onReceiveProgress: (int count, int total) {
        _controller.add(Downloading(count, total));
      },
    ).then((value) {
      EasyLoading.dismiss();
      if (value.statusCode == 200) {
        _controller.add(Success(file.path));
        _controller.close();
      } else {
        _controller.addError("错误代码:${value.statusCode}");
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
  final int count;
  final int total;

  Downloading(this.count, this.total);
}

class Success<T> extends Status {
  final T data;

  Success(this.data);
}

class Error extends Status {
  final String message;

  Error(this.message);
}
