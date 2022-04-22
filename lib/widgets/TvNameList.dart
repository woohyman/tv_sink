import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../business/PlayControlManager.dart';
import '../model/bean/TvResource.dart';
import '../model/bean/data.dart';
import '../pages/ScaffoldRoute.dart';
import '../util/log.dart';

class TvNameList extends StatefulWidget {
  int _tabIndex;

  TvNameList(this._tabIndex);

  @override
  State<StatefulWidget> createState() => _TvNameListState();
}

class _TvNameListState extends State<TvNameList> {
  SharedPreferences? _preferences;
  ValueNotifier<int> curSelectPosition = ValueNotifier<int>(0);
  int _initTabIndex = 0;
  late CommonData commonData;
  int index = 0;
  var _tvList = chineseTvLis;

  @override
  void initState() {
    super.initState();
    index = widget._tabIndex;
    switch (index) {
      case 0:
        _tvList = chineseTvLis;
        break;
      case 1:
        _tvList = foreignTvLis;
        break;
      case 2:
        _tvList = featuredTvLis;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    commonData = Provider.of<CommonData>(context, listen: true);
    Position _position = commonData.getPositionByName();
    if (index == _position.tabIndex) {
      _initTabIndex = _position.listIndex;
    }

    return ValueListenableBuilder<int>(
      builder: (BuildContext context, int value, Widget? child) {
        return Expanded(
            child: ScrollablePositionedList.builder(
          addAutomaticKeepAlives: true,
          itemScrollController: getScrollController(index),
          initialScrollIndex: _initTabIndex,
          itemCount: _tvList.length,
          itemBuilder: (BuildContext context, int innerIndex) {
            logger.i("value ==> itemBuilder|$index : $value : $innerIndex");
            bool isCurIndex = value == innerIndex;
            List<DropdownMenuItem<String>>? myItems = [];
            Set? sets = commonData?.getSourceSet(index, innerIndex);
            sets?.toList().asMap().forEach((key, value) {
              myItems.add(DropdownMenuItem<String>(
                value: value,
                child: Text("直播源${key + 1}"),
              ));
            });
            String tvName = getBeanByIndex(index, innerIndex);

            return Card(
              color: isCurIndex ? Colors.lightBlue.shade200 : Colors.lightBlue.shade100,
              //z轴的高度，设置card的阴影
              elevation: isCurIndex ? 20.0 : 0.0,
              //设置shape，这里设置成了R角
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              //对Widget截取的行为，比如这里 Clip.antiAlias 指抗锯齿
              clipBehavior: Clip.antiAlias,
              semanticContainer: false,
              child: InkWell(
                  onTap: () async {
                    List<String>? _list = (await SharedPreferences.getInstance()).getStringList("xx") ?? [];
                    _list.add(tvName);
                    _preferences?.setStringList("xx", _list);
                    PlayControlManager.instance.setResourceAndPlay(await compute(getLiveSource, tvName), 1);
                    curSelectPosition.value = innerIndex;
                  },
                  child: Padding(
                    child: Flex(
                      direction: Axis.horizontal,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Expanded(
                            flex: 1,
                            child: getImageProviderByUrl(commonData, index, innerIndex),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(
                            tvName,
                            style: isCurIndex ? const TextStyle(color: Colors.red, fontSize: 18) : const TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Visibility(
                            visible: commonData.getSourceSet(index, innerIndex).length > 1,
                            child: DropdownButton<String>(
                              value: getLiveSource(tvName),
                              onChanged: (value) {
                                setState(() {
                                  commonData.setLiveSource(tvName, value);
                                });
                              },
                              items: myItems,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.center,
                            child: InkWell(
                              onTap: () => {
                                setState(() {
                                  if (commonData.iscotain(tvName)) {
                                    commonData.removeurl(tvName);
                                  } else {
                                    commonData.addcollect(tvName);
                                  }
                                })
                              },
                              child: commonData.iscotain(tvName) ? const Icon(Icons.favorite) : const Icon(Icons.favorite_border),
                            ),
                          ),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.only(left: 0, right: 0, top: 12, bottom: 12),
                  )),
            );
          },
        ));
      },
      valueListenable: curSelectPosition,
    );
  }
}

Widget getImageProviderByUrl(CommonData commonData, int index, int innerIndex) {
  String url = commonData.getIconUrl(index, innerIndex);
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
        width: 50,
        height: 50.0,
        placeholder: "images/tv_dianshi.png",
        image: url);
  }
}
