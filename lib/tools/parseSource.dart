import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  readContent()
      .then((value) => {print("解析成功！")})
      .onError((error, stackTrace) => {print("$error : $stackTrace")});
}

//从文件读出字符串
Future<String> readContent() async {
  String stringValue = await rootBundle.loadString("file/radio.m3u");
  var out = {};

  var arrays = stringValue.split("\n");

  var name = "";
  var result = {};

  for (String value in arrays) {
    if (value.contains("#EXTM3U ")) {
      continue;
    }

    print("*************************");
    if (value.contains("#EXTINF:-1")) {
      result = {};
      final content = value.split(",")[0];
      name = value.split(",")[1];

      var arrays = content.split(" ");
      for (var element in arrays) {
        if (!element.contains("=")) {
          continue;
        }
        var segmentsKey = element.split("=")[0];
        segmentsKey = segmentsKey.replaceAll("tvg-name", "tvgName");
        segmentsKey = segmentsKey.replaceAll("tvg-logo", "tvgLogo");
        segmentsKey = segmentsKey.replaceAll("group-title", "groupTitle");
        segmentsKey = segmentsKey.replaceAll("tvg-id", "tvgId");

        var segmentsValue = element.split("=")[1];
        result["\"$segmentsKey\""] =
            segmentsValue.endsWith("\"") ? segmentsValue : segmentsValue + "\"";
      }
    } else if (value.contains("http") || value.contains("https")) {
      if (!result.containsKey("tvgUrl")) {
        result["\"tvgUrl\""] = ["\"$value\""];
      } else {
        result["\"tvgUrl\""].add("\"$value\"");
      }
      print("tvgUrl ===> " + result["\"tvgUrl\""].toString());
      print("result ===> " + result.toString());
      out["\"$name\""] = result;
    }
  }

  print("out ===> " + out.toString());

  File file = await writeCounter(out);
  print("result => ${file.path}");
  return stringValue;
}

Future<String> get _localPath async {
  final _path = await getTemporaryDirectory();
  return _path.path;
}

Future<File> get _localFile async {
  final path = await _localPath;
  return File('$path/counter.json');
}

Future<File> writeCounter(counter) async {
  final file = await _localFile;
  return file.writeAsString('$counter');
}
