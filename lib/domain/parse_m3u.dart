import 'dart:io';
import 'package:tv_sink/domain/model/tv_channel_info_model.dart';
import 'data_provider/play_list_data_provider.dart';
import '../util/transform_util.dart';
import '../data/model/tv_channel_info.dart';

const m3uTitlePrefix = "#EXTM3U";
const m3uContentPrefix = "#EXTINF";

Future<String> parseFromPath(String path) async {
  String stringValue = await File(path).readAsString();

  return parseFromMemory(stringValue);
}

Future<String> parseFromMemory(String stringValue) async {
  if (stringValue.contains(m3uTitlePrefix) ||
      stringValue.contains(m3uContentPrefix)) {
    return _readM3uContent(stringValue);
  } else {
    return _readTxtContent(stringValue);
  }
}

Future<String> _readM3uContent(String stringValue) async {
  var arrays = stringValue.split("\n");
  var curTvName = "";
  Map<String, TvChannelInfoModel> _tvList = <String, TvChannelInfoModel>{};

  for (var value in arrays) {
    if (value.contains(m3uTitlePrefix)) {
      continue;
    }

    if (value.contains(m3uContentPrefix)) {
      final bigParamArray = value.split(",");
      curTvName = bigParamArray.last;

      if (_tvList.keys.contains(curTvName)) {
        continue;
      }

      final tvInfo = TvChannelInfoModel([]);

      var detailParamArray = [];
      for (var value in bigParamArray) {
        detailParamArray.addAll(value.split(" "));
      }

      for (var value in detailParamArray) {
        if (value.contains("tvg-id")) {
          tvInfo.tvgId = value.substring(8, value.length - 1);
        }

        if (value.contains("tvg-country")) {
          tvInfo.tvgCountry = value.substring(13, value.length - 1);
        }

        if (value.contains("tvg-language")) {
          tvInfo.tvgLanguage = value.substring(14, value.length - 1);
        }

        if (value.contains("tvg-logo")) {
          tvInfo.tvgLogo = value.substring(10, value.length - 1);
        }

        if (value.contains("group-title")) {
          tvInfo.groupTitle = value.substring(13, value.length - 1);
        }
      }

      _tvList[curTvName] = tvInfo;
    } else if (value.startsWith("#http") ||
        value.startsWith("http") ||
        value.startsWith("rtmp")) {
      if (value.startsWith("#http")) {
        value = value.substring(2);
      }

      final _tvInfo = _tvList.values.last;
      if (!_tvInfo.tvgUrlList.contains(value)) {
        _tvInfo.tvgUrlList.add(value);
      }
    }
  }

  OptionalPlayListDataProvider.fromGet().setWatchLists(_tvList);

  return "解析成功,总共有 ${_tvList.length}个节目";
}

Future<String> _readTxtContent(String stringValue) async {
  var arrays = stringValue.split("\n");
  final _tvList = <String, TvChannelInfoModel>{};

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

      final tvInfo = TvChannelInfoModel([bigParamArray[1]]);
      _tvList[bigParamArray[0]] = tvInfo;
    }
  }

  OptionalPlayListDataProvider.fromGet().setWatchLists(_tvList);

  return "解析成功,总共有 ${_tvList.length}个节目";
}
