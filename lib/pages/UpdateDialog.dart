import 'package:flutter/material.dart';

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
