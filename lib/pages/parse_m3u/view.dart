import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'logic.dart';

class ParseUrlListRoute extends GetView<ParseM3uLogic> {
  const ParseUrlListRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _urlController = TextEditingController();
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
                    onPressed: () {
                      controller.fetchRemoteData(_urlController.text);
                    },
                  ),
                  Obx(() {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        controller.downloadInfo,
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
