import 'dart:io';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../provider/watch_lists_controller.dart';
import '../util/const.dart';

void parse(String url) async {
  String stringValue = await File(url).readAsString();

  if (stringValue.contains("#EXTM3U")) {
    _readM3uContent(stringValue)
        .then((value) => {print("解析成功！")})
        .onError((error, stackTrace) => {print("$error : $stackTrace")});
  } else {
    _readXmlContent(stringValue)
        .then((value) => {print("解析成功！")})
        .onError((error, stackTrace) => {print("$error : $stackTrace")});
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
        print("xxxxxxxx> $value");

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
    } else if (value.contains("http") || value.contains("rtmp")) {
      _foreignTvList[curTvName]["tvgUrl"].add(value);
    }
  }

  final controller = Get.find<WatchListsController>();
  controller.setWatchLists(_foreignTvList);

  eventBus.fire(keyImportState);
  return stringValue;
}

Future<String> _readXmlContent(String stringValue) async {
  var arrays = stringValue.split("\n");
  Map<String, dynamic> _foreignTvList = <String, dynamic>{};

  for (var value in arrays) {
    if (value.contains("http") || value.contains("rtmp")) {
      final bigParamArray = value.split(",");
      _foreignTvList[bigParamArray[0]] ??= <String, dynamic>{
        "tvgId": "",
        "tvgCountry": "",
        "tvgLanguage": "",
        "tvgLogo": "",
        "groupTitle": "",
        "tvgUrl": [bigParamArray[1]],
      };
    }
  }

  final controller = Get.find<WatchListsController>();
  controller.setWatchLists(_foreignTvList);
  eventBus.fire(keyImportState);
  return stringValue;
}
