import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class SettingRoute extends StatefulWidget {
  const SettingRoute({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SettingRouteState();
}

class _SettingRouteState extends State<SettingRoute> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("用户中心")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            const ListTile(
              title: Text(
                '头像',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              trailing: Icon(Icons.accessibility),
            ),
            const ListTile(
              title: Text(
                '手机号码',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              trailing: Text(
                '添加绑定',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18.0),
              ),
            ),
            const ListTile(
              title: Text(
                '昵称',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              trailing: Text(
                '匿名用户',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18.0),
              ),
            ),
            const ListTile(
              title: Text(
                '微信',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              trailing: Text(
                '添加绑定',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18.0),
              ),
            ),
            ListTile(
              onTap: () => EasyLoading.showToast('登录功能暂时未开放！'),
              title: const Center(
                child: Text(
                  '退出登录',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
