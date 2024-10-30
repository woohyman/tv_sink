import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../domain/DowloadController.dart';

class ParseUrlListRoute extends StatefulWidget {
  const ParseUrlListRoute({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SettingRouteState();
}

class _SettingRouteState extends State<ParseUrlListRoute> {
  final _urlController = TextEditingController();
  final _downloadController = DownloadController();
  var downloadInfo = "".obs;

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
                      _downloadController
                          .fetchRemoteData(_urlController.text)
                          .listen(
                        (data) {
                          downloadInfo.value = data;
                        },
                      );
                    },
                  ),
                  Obx(() {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        downloadInfo.value,
                        textAlign: TextAlign.left,
                      ),
                    );
                  }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
