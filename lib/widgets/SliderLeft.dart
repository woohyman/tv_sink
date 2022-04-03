import 'package:flutter/material.dart';

import '../routes/RouterTable.dart';

class SliderLeft extends StatelessWidget {
  const SliderLeft({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(top: 38.0),
                child: InkWell(
                  onTap: () =>
                      Navigator.of(context).pushNamed(RouterTable.settingPath),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: ClipOval(
                          child: Image.asset(
                            "images/icon_anonymous.png",
                            width: 80,
                          ),
                        ),
                      ),
                      const Text(
                        "匿名用户",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('应用设置'),
                    // onTap: () => Navigator.of(context)
                    //     .pushNamed(RouterTable.settingPath),
                  ),
                  ListTile(
                    onTap: () => {
                      Navigator.of(context).pushNamed(RouterTable.historyPath),
                    },
                    leading: Icon(Icons.history),
                    title: Text('观看历史'),
                  ),
                  ListTile(
                    leading: Icon(Icons.share),
                    title: Text('分享App'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
