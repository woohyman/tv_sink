import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import '../domain/parse/ParseTxtSourceToList.dart';

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
                        downloadInfo = "开始下载数据...${DateTime.now()}";
                      });

                      final file = await _localFile;

                      Dio().download(_urlController.text, file.path,
                          onReceiveProgress: (int count, int total) {
                        setState(() {
                          if(total>0){
                            downloadInfo =
                            "下载进度:${(count.toDouble() * 100 / total.toDouble()).truncate()}%";
                          }else{
                            downloadInfo =
                            "下载进度:$count字节";
                          }
                        });
                      }).then((value) {
                        if (value.statusCode == 200) {
                          setState(() {
                            downloadInfo = "下载数据成功,开始解析数据";
                          });
                          parse(file.path).then((value) {
                            setState(() {
                              downloadInfo = "已解析完成:"+value;
                            });
                          });
                          //     .catchError((error, stackTrace){
                          //   setState(() {
                          //     downloadInfo = "解析失败: $error : $stackTrace";
                          //   });
                          // });
                        }else{
                          setState(() {
                            downloadInfo = "1加载失败 $value";
                          });
                        }
                      });
                        //   .catchError((e) {
                        // setState(() {
                        //   downloadInfo = "2加载失败 $e";
                        // });

                      // });
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
