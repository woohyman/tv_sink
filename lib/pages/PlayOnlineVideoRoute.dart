import 'package:flutter/material.dart';
import '../domain/PlayController.dart';
import '../domain/model/TvInfo.dart';

class PlayOnlineVideoRoute extends StatefulWidget {
  const PlayOnlineVideoRoute({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SettingRouteState();
}

class _SettingRouteState extends State<PlayOnlineVideoRoute> {
  final _urlController = TextEditingController();
  final _tvNameController = TextEditingController();
  var downloadInfo = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("在线视频播放")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _tvNameController,
              decoration: const InputDecoration(
                labelText: "输入名字",
                hintText: "输入视频文件地址",
              ),
              validator: (v) {
                return v?.isEmpty ?? true ? null : "请输入正确的下载地址";
              },
            ),
            TextFormField(
              controller: _urlController,
              decoration: const InputDecoration(
                labelText: "输入视频文件地址",
                hintText: "输入视频文件地址",
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
                      child: Text("开始播放"),
                    ),
                    onPressed: () async {
                      PlayController.instance.playSource(MapEntry(
                          _tvNameController.text,
                          TvInfo([_urlController.text])));
                      Navigator.pop(context);
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
