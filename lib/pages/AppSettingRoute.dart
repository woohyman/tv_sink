import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSettingRoute extends StatefulWidget {
  const AppSettingRoute({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SettingRouteState();
}

class _SettingRouteState extends State<AppSettingRoute> {
  @override
  void initState() {
    SharedPreferences.getInstance().then((preferences) => {
      setState(()=>{
        _switchSelected = preferences.getBool("11")??false
      })
    });
    super.initState();
  }

  bool _switchSelected = true; //维护单选开关状态
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("应用设置")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            ListTile(
              title: Text(
                '允许非wifi网络自动播放',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              trailing: Switch(
                value: _switchSelected, //当前状态
                onChanged: (value) {
                  //重新构建页面
                  setState(() {
                    _switchSelected = value;
                    SharedPreferences.getInstance().then((preferences) => {
                          preferences.setBool("11", value),
                        });
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
