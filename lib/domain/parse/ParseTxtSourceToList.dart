import 'dart:io';

import 'package:get/get.dart';
import 'package:tv_sink/domain/model/TvInfo.dart';
import 'package:tv_sink/util/log.dart';

import '../../control/WatchListsController.dart';
import '../../control/usecase/SetOptionalTvList.dart';
import '../../util/const.dart';

Future<String> parse(String url) async {
  String stringValue = await File(url).readAsString();

  if (stringValue.contains("#EXTM3U") || stringValue.contains("#EXTINF")) {
    return _readM3uContent(stringValue);
  } else {
    return _readXmlContent(stringValue);
  }
}

Future<String> parseData(String stringValue) async {
  if (stringValue.contains("#EXTM3U") || stringValue.contains("#EXTINF")) {
    return _readM3uContent(stringValue);
  } else {
    return _readXmlContent(stringValue);
  }
}

Future<String> _readM3uContent(String stringValue) async {
  var arrays = stringValue.split("\n");
  var curTvName = "";
  Map<String, TvInfo> _tvList = <String, TvInfo>{};

  for (var value in arrays) {
    if (value.contains("#EXTM3U ")) {
      continue;
    }

    if (value.contains("#EXTINF")) {
      final bigParamArray = value.split(",");
      curTvName = bigParamArray.last;

      if (_tvList.keys.contains(curTvName)) {
        continue;
      }

      final _tvInfo = TvInfo(
          tvgId: "",
          tvgCountry: "",
          tvgLanguage: "",
          tvgLogo: "",
          groupTitle: "",
          tvgUrl: "",
          tvgUrlList: []);

      var detailParamArray = [];
      for (var value in bigParamArray) {
        detailParamArray.addAll(value.split(" "));
      }

      for (var value in detailParamArray) {
        if (value.contains("tvg-id")) {
          _tvInfo.tvgUrl = value.substring(8, value.length - 1);
        }

        if (value.contains("tvg-country")) {
          _tvInfo.tvgCountry = value.substring(13, value.length - 1);
        }

        if (value.contains("tvg-language")) {
          _tvInfo.tvgLanguage = value.substring(14, value.length - 1);
        }

        if (value.contains("tvg-logo")) {
          _tvInfo.tvgLogo = value.substring(10, value.length - 1);
        }

        if (value.contains("group-title")) {
          _tvInfo.groupTitle = value.substring(13, value.length - 1);
        }
      }

      _tvList[curTvName] = _tvInfo;
    } else if (value.startsWith("#http") ||
        value.startsWith("http") ||
        value.startsWith("rtmp")) {
      if (value.startsWith("#http")) {
        value = value.substring(2);
      }

      final _tvInfo = _tvList.values.last;
      if (!_tvInfo.tvgUrlList.contains(value)) {
        _tvInfo.tvgUrlList.add(value);
        _tvInfo.tvgUrl = _tvInfo.tvgUrlList.first;
      }
    }
  }

  final controller = Get.find<WatchListsController>();
  controller.setWatchLists(_tvList);

  final _setOptionalTvList = SetOptionalTvList();
  _setOptionalTvList.invoke(_tvList);

  return "解析成功,总共有 ${_tvList.length}个节目";
}

Future<String> _readXmlContent(String stringValue) async {
  var arrays = stringValue.split("\n");
  final _tvList = <String, TvInfo>{};

  for (var value in arrays) {
    if (value.contains("http") || value.contains("rtmp")) {
      final bigParamArray = value.split(",");
      if (bigParamArray.length < 2) {
        continue;
      }

      if (!bigParamArray[1].startsWith("http") &&
          !bigParamArray[1].startsWith("rtmp")) {
        continue;
      }
      _tvList[bigParamArray[0]] = TvInfo(
          tvgId: "",
          tvgCountry: "",
          tvgLanguage: "",
          tvgLogo: "",
          groupTitle: "",
          tvgUrl: bigParamArray[1],
          tvgUrlList: [bigParamArray[1]]);
    }
  }

  final controller = Get.find<WatchListsController>();
  controller.setWatchLists(_tvList);

  final _setOptionalTvList = SetOptionalTvList();
  _setOptionalTvList.invoke(_tvList);

  return "解析成功,总共有 ${_tvList.length}个节目";
}
