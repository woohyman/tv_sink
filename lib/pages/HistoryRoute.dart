import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../business/PlayControlManager.dart';
import '../model/bean/TvResource.dart';
import '../routes/RouterTable.dart';
import '../util/log.dart';
import '../widgets/TvNameList.dart';

class HistoryRoute extends StatefulWidget {
  const HistoryRoute({Key? key}) : super(key: key);

  @override
  State<HistoryRoute> createState() => _HistoryRouteState();
}

class _HistoryRouteState extends State<HistoryRoute> {
  List<String> _list = [];

  void fetchListState() async {
    SharedPreferences _sharePreferences = await SharedPreferences.getInstance();
    _list = _sharePreferences.getStringList("xx")!.reversed.toList();
    setState(() {});
  }

  void setListState() async {
    SharedPreferences _sharePreferences = await SharedPreferences.getInstance();
    _sharePreferences.setStringList("xx", _list);
  }

  @override
  void initState() {
    fetchListState();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (BuildContext context, int innerIndex) {
          return Card(
              color: Colors.lightBlue.shade100,
              elevation: 0.0,
              //设置shape，这里设置成了R角
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              //对Widget截取的行为，比如这里 Clip.antiAlias 指抗锯齿
              clipBehavior: Clip.antiAlias,
              semanticContainer: false,
              child: InkWell(
                  onTap: () async {
                    Navigator.popUntil(context, ModalRoute.withName('/'));
                    Provider.of<CommonData>(context,listen: false).notifyPositionChange(_list[innerIndex]);
                    setTvChannel(_list[innerIndex], 0);
                    PlayControlManager.instance.setResourceAndPlay(await compute(getLiveSource, _list[innerIndex]));
                    _list.add(_list[innerIndex]);
                    setListState();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 0, top: 12, bottom: 12),
                    child: Flex(
                      direction: Axis.horizontal,
                      children: [
                        getImageProviderByUrl(getIconUrlByTvName(_list[innerIndex])),
                        Padding(
                          child: Text(
                            _list[innerIndex],
                            style: const TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          padding: const EdgeInsets.only(left: 0, right: 0, top: 12, bottom: 12),
                        )
                      ],
                    ),
                  )));
        },
        itemCount: _list.length);
  }
}
