import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/bean/TvResource.dart';
import '../routes/RouterTable.dart';
import '../util/log.dart';

class HistoryRoute extends StatefulWidget{

  @override
  State<HistoryRoute> createState() => _HistoryRouteState();
}

class _HistoryRouteState extends State<HistoryRoute> {
  SharedPreferences? _preferences;

  @override
  void initState() {
    SharedPreferences.getInstance().then((value) => {
      logger.i("SharedPreferences ***********************> $value"),
      setState(() {
        _preferences = value;
      })
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    CommonData commonData = Provider.of<CommonData>(context, listen: true);
    List<String>? _list = _preferences?.getStringList("xx");

    return ListView.separated(itemBuilder: (BuildContext context, int innerIndex){
      logger.e("_list?[innerIndex] ==> ${_list?[innerIndex]}");
      return InkWell(
          onTap: () => {
            commonData.setTvChannel(_list?[innerIndex]??"未知", -1),
            Navigator.of(context).pushNamed(RouterTable.playerPath,arguments: _list?[innerIndex]),
          },
          child: Padding(
            child: Text(
              _list?[innerIndex]??"未知",
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
            padding: EdgeInsets.only(left: 0, right: 0, top: 12, bottom: 12),
          ));
    }, separatorBuilder: (BuildContext context, int index) {
      return const Divider(
        height: 2,
        color: Colors.blue,
      );
    }, itemCount: _list?.length??0);
  }
}