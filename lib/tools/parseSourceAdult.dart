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
  String stringValue = await rootBundle.loadString("file/asian_adult.m3u");
  var out = {};

  var arrays = stringValue.split("\n");
  // print("************************* total ==> "+arrays.toString());

  for (String value in arrays) {
    if (value.contains("#EXTM3U ")) {
      continue;
    }

    print("************************* value ==> " + value.toString());
    if (value.contains("#EXTINF:-1")) {
      var arrays = value.split(",");
      out["\"${arrays[1]}\""] = {};
    } else if (value.contains("http") || value.contains("rtmp")) {
      out.values.last["\"tvgId\""] = "\"\"";
      out.values.last["\"tvgCountry\""] = "\"\"";
      out.values.last["\"tvgLanguage\""] = "\"\"";
      out.values.last["\"tvgLogo\""] = "\"\"";
      out.values.last["\"groupTitle\""] = "\"\"";

      if (out.values.last["\"tvgUrl\""] == null) {
        out.values.last["\"tvgUrl\""] = ["\"$value\""];
      } else {
        out.values.last["\"tvgUrl\""].add("\"$value\"");
      }

      print("************************* value ==> " + out.values.last.toString());
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
  return File('$path/counter.json');
}

Future<File> writeCounter(counter) async {
  final file = await _localFile;
  return file.writeAsString('$counter');
}
