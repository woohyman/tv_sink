import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tvSink/tools/ParseTxtSourceToList.dart';

class ParseUrlListRoute extends StatefulWidget {
  const ParseUrlListRoute({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SettingRouteState();
}

class _SettingRouteState extends State<ParseUrlListRoute> {
  final TextEditingController _urlController = TextEditingController();
  var downloadInfo = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("M3U解析")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _urlController,
              decoration: const InputDecoration(
                labelText: "解析M3U并生成列表",
                hintText: "输入m3u文件地址",
              ),
              validator: (v) {
                return v == null || v.trim().isNotEmpty ? null : "请输入正确的下载地址";
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Column(
                children: <Widget>[
                  ElevatedButton(
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text("开始解析"),
                    ),
                    onPressed: () async {
                      setState(() {
                        downloadInfo = "开始下载数据...";
                      });

                      final file = await _localFile;
                      print("test001 开始下载 $file");
                      print("test001 地址 ${_urlController.text}");

                      Dio().download(_urlController.text, file.path,
                          onReceiveProgress: (int count, int total) {
                        print("test001 value ==> $count/$total");
                        setState(() {
                          downloadInfo = downloadInfo + "\n进度:$count/$total";
                        });
                      }).then((value) {
                        print("test001 value ==> ${value.statusCode}");
                        if (value.statusCode == 200) {
                          setState(() {
                            downloadInfo = downloadInfo + "\n下载数据成功,开始解析数据";
                            parse(file.path);
                            downloadInfo =
                                downloadInfo + "\n解析数据成功,列表已经填充到自选频道";
                          });
                        }
                      }).catchError((e) {
                        downloadInfo = downloadInfo + "\n加载失败";
                      });
                    },
                  ),
                  Text(
                    downloadInfo,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Future<String> get _localPath async {
  final _path = await getTemporaryDirectory();
  return _path.path;
}

Future<File> get _localFile async {
  final path = await _localPath;
  return File('$path/playList');
}
