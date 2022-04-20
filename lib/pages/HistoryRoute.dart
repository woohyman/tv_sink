import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../business/PlayControlManager.dart';
import '../model/bean/TvResource.dart';
import '../routes/RouterTable.dart';
import '../util/log.dart';

class HistoryRoute extends StatefulWidget {
  @override
  State<HistoryRoute> createState() => _HistoryRouteState();
}

class _HistoryRouteState extends State<HistoryRoute> {
  SharedPreferences? _preferences;

  @override
  void initState() {
    SharedPreferences.getInstance().then((value) =>
    {
      logger.i("SharedPreferences ***********************> $value"),
      setState(() {
        _preferences = value;
      })
    });
    super.initState();
  }

  Widget getImageProviderByUrl(String url) {
    if (url.isEmpty) {
      return Image.asset(
        "images/tv_dianshi.png",
        width: 50.0,
        height: 50.0,
      );
    } else {
      return FadeInImage.assetNetwork(
          imageErrorBuilder: (context, error, stackTrace) {
            return Image.asset(
              "images/tv_dianshi.png",
              width: 50.0,
              height: 50.0,
            );
          },
          width: 50.0,
          height: 50.0,
          placeholder: "images/tv_dianshi.png",
          image: url);
    }
  }

  @override
  Widget build(BuildContext context) {
    CommonData commonData = Provider.of<CommonData>(context, listen: true);
    List<String>? _list = _preferences?.getStringList("xx")!.reversed.toList();

    return ListView.builder(
        itemBuilder: (BuildContext context, int innerIndex) {
          logger.e("_list?[innerIndex] ==> ${_list?[innerIndex]}");
          return Card(
              color: Colors.lightBlue.shade100,
              elevation: 0.0,
              //设置shape，这里设置成了R角
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              //对Widget截取的行为，比如这里 Clip.antiAlias 指抗锯齿
              clipBehavior: Clip.antiAlias,
              semanticContainer: false,
              child: InkWell(
                  onTap: () => {
                    commonData.setTvChannel(_list?[innerIndex] ?? "未知", -1),
                  PlayControlManager.instance.setResourceAndPlay(commonData.getLiveSource(_list?[innerIndex] ?? "未知")??"",-1),
                  Navigator.popUntil(context, ModalRoute.withName('/'))
              },
              child: Padding(
                padding: EdgeInsets.only(
                    left: 10, right: 0, top: 12, bottom: 12),
                child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    getImageProviderByUrl(commonData.getIconUrlByTvName(
                        _list?[innerIndex] ?? "未知")),
                    Padding(
                      child: Text(
                        _list?[innerIndex] ?? "未知",
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      padding: EdgeInsets.only(
                          left: 0, right: 0, top: 12, bottom: 12),
                    )
                  ],
                ),
              )
          ));
        },
        itemCount: _list?.length ?? 0);
  }
}
