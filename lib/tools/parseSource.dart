import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tvSink/util/log.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  readContent()
      .then((value) => {print("解析成功！")})
      .onError((error, stackTrace) => {print("$error : $stackTrace")});
}

//从文件读出字符串
Future<String> readContent() async {
  String stringValue = await rootBundle.loadString("file/cn.m3u");
  var out = {};

  var arrays = stringValue.split("\n");

  for (String value in arrays) {
    if (value.contains("#EXTM3U ")) {
      continue;
    }
    print("*************************");
    var result = {};
    if (value.contains("#EXTINF:-1")) {
      var arrays = value.split(" ");
      for (var element in arrays) {
        var arrays1 = element.split("=");
        if (arrays1.length > 1) {
          if (arrays1[0].contains("group-title") || arrays1[0].contains("user-agent")) {
            var arrays2 = arrays1[1].split(",");
            result["\"${arrays1[0]}\""] = arrays2[0];
            if (arrays2.length>1 && out["\"${arrays2[1]}\""] == null) {
              out["\"${arrays2[1]}\""] = result;
            }
          } else {
            result["\"${arrays1[0]}\""] =
                arrays1[1].endsWith("\"") ? arrays1[1] : arrays1[1] + "\"";
          }
        }
      }
    } else if (value.contains("http")) {
      if (out.values.last["\"tvg-url\""] == null) {
        out.values.last["\"tvg-url\""] = {"\"$value\""};
      } else {
        out.values.last["\"tvg-url\""].add("\"$value\"");
      }
    }
  }

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
  return File('$path/counter.txt');
}

Future<File> writeCounter(counter) async {
  final file = await _localFile;
  return file.writeAsString('$counter');
}
