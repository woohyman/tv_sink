import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class UpdateDialog extends StatefulWidget {
  final String version;
  final Function? onClickWhenDownload;
  final Function? onClickWhenNotDownload;

  const UpdateDialog({
    Key? key,
    required this.version,
    this.onClickWhenDownload,
    this.onClickWhenNotDownload,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => UpdateDialogState();
}

class UpdateDialogState extends State<UpdateDialog> {
  var _downloadProgress = 0.0;

  @override
  Widget build(BuildContext context) {
    var _textStyle = TextStyle(
      color: Theme.of(context).textTheme.bodyLarge?.color,
    );

    return AlertDialog(
      title: Text("有新的更新", style: _textStyle),
      content: _downloadProgress == 0.0 ? Text("版本${widget.version}", style: _textStyle) : LinearProgressIndicator(value: _downloadProgress),
      actions: <Widget>[
        TextButton(
          child: Text('更新', style: _textStyle),
          onPressed: () {
            if (_downloadProgress != 0.0) {
              widget.onClickWhenDownload!("正在更新中");
              return;
            }
            widget.onClickWhenNotDownload!();
          },
        ),
        TextButton(
          child: const Text('取消'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  set progress(_progress) {
    setState(() {
      _downloadProgress = _progress;
      if (_downloadProgress == 1) {
        Navigator.of(context).pop();
        _downloadProgress = 0.0;
      }
    });
  }
}

Future<bool> checkPermission() async {
  bool isStorage = true;
  bool isRequestInstallPackages = true;
  //检查是否已有读写内存权限
  PermissionStatus statusStorage = await Permission.storage.status;
  //允许安装未知权限
  PermissionStatus statusRequestInstallPackages =
  await Permission.requestInstallPackages.status;
  //判断如果还没拥有读写权限就申请获取权限
  if (statusStorage != PermissionStatus.granted) {
    isStorage = await Permission.storage.request().isGranted;
  }
  //判断允许安装未知权限
  if (statusRequestInstallPackages != PermissionStatus.granted) {
    isRequestInstallPackages =
    await Permission.requestInstallPackages.request().isGranted;
  }

  if (isStorage == true && isRequestInstallPackages == true) {
    return true;
  } else {
    return false;
  }
}
