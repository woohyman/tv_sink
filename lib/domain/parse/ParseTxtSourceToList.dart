import 'dart:io';

import 'package:get/get.dart';

import '../../control/WatchListsController.dart';
import '../../control/usecase/SetOptionalTvList.dart';
import '../../util/const.dart';

Future<String> parse(String url) async {
  String stringValue = await File(url).readAsString();

  if (stringValue.contains("#EXTM3U")) {
    return _readM3uContent(stringValue);
  } else {
    return _readXmlContent(stringValue);
  }
}

Future<String> parseData(String stringValue) async {
  if (stringValue.contains("#EXTM3U")) {
    return _readM3uContent(stringValue);
  } else {
    return _readXmlContent(stringValue);
  }
}

Future<String> _readM3uContent(String stringValue) async {
  var arrays = stringValue.split("\n");
  var curTvName = "";
  Map<String, dynamic> _foreignTvList = <String, dynamic>{};

  for (var value in arrays) {
    if (value.contains("#EXTM3U ")) {
      continue;
    }

    if (value.contains("#EXTINF:-1")) {
      final bigParamArray = value.split(",");
      curTvName = bigParamArray.last;
      _foreignTvList[curTvName] ??= <String, dynamic>{
        "tvgId": "",
        "tvgCountry": "",
        "tvgLanguage": "",
        "tvgLogo": "",
        "groupTitle": "",
        "tvgUrl": [],
      };

      var detailParamArray = [];
      for (var value in bigParamArray) {
        detailParamArray.addAll(value.split(" "));
      }

      for (var value in detailParamArray) {
        if (value.contains("tvg-id")) {
          _foreignTvList[curTvName]["tvgId"] =
              value.substring(8, value.length - 1);
        }

        if (value.contains("tvg-country")) {
          _foreignTvList[curTvName]["tvgCountry"] =
              value.substring(13, value.length - 1);
        }

        if (value.contains("tvg-language")) {
          _foreignTvList[curTvName]["tvgLanguage"] =
              value.substring(14, value.length - 1);
        }

        if (value.contains("tvg-logo")) {
          _foreignTvList[curTvName]["tvgLogo"] =
              value.substring(10, value.length - 1);
        }

        if (value.contains("group-title")) {
          _foreignTvList[curTvName]["groupTitle"] =
              value.substring(13, value.length - 1);
        }
      }
    } else if (value.startsWith("#http") ||
        value.startsWith("http") ||
        value.startsWith("rtmp")) {
      if (value.startsWith("#http")) {
        value = value.substring(2);
      }
      final urlList = _foreignTvList[curTvName]["tvgUrl"] as List<dynamic>;

      bool contain = false;
      for (var item in urlList) {
        if (item == value) contain = true;
      }
      if (!contain) {
        _foreignTvList[curTvName]["tvgUrl"].add(value);
      }
    }
  }

  final controller = Get.find<WatchListsController>();
  controller.setWatchLists(_foreignTvList);

  eventBus.fire(keyImportState);
  return "解析成功,总共有 ${_foreignTvList.length}个节目";
}

Future<String> _readXmlContent(String stringValue) async {
  var arrays = stringValue.split("\n");
  Map<String, dynamic> _tvList = <String, dynamic>{};

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
      _tvList[bigParamArray[0]] ??= <String, dynamic>{
        "tvgId": "",
        "tvgCountry": "",
        "tvgLanguage": "",
        "tvgLogo": "",
        "groupTitle": "",
        "tvgUrl": [bigParamArray[1]],
      };
    }
  }

  final _setOptionalTvList = SetOptionalTvList();
  _setOptionalTvList.invoke(_tvList);

  return "解析成功,总共有 ${_tvList.length}个节目";
}
