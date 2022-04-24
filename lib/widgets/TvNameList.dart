import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../business/EventBus.dart';
import '../business/PlayControlManager.dart';
import '../model/bean/TvResource.dart';
import '../model/bean/data.dart';
import '../util/const.dart';

class TvNameList extends StatefulWidget {
  final int _tabIndex;

  const TvNameList(this._tabIndex, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TvNameListState();
}

class _TvNameListState extends State<TvNameList> {
  int index = 0;
  List<String> _tvList = chineseTvLis.keys.toList();
  final ItemScrollController _controller = ItemScrollController();

  @override
  void initState() {
    super.initState();

    SharedPreferences.getInstance().then((value) {
      featuredTvLis.clear();
      List<String> _list = value.getStringList(keySharePreferenceFavoriteList)??[];
      featuredTvLis.addAll(_list);
    });

    bus.on(keyNotifyFavoriteList, (arg) async {
      if (widget._tabIndex == 2) {
        setState(() {});
        SharedPreferences _sharePreferences = await SharedPreferences.getInstance();
        _sharePreferences.setStringList(keySharePreferenceFavoriteList, featuredTvLis);
      }
    });

    bus.on(keySelectState, (arg) {
      List<String> _list = arg as List<String>;
      if (_list.contains(scrollToItemSelect)) {
        if (position.tabIndex == widget._tabIndex) {
          _controller.jumpTo(index: position.listIndex);
        }
      }
    });

    index = widget._tabIndex;
    switch (index) {
      case 0:
        _tvList = chineseTvLis.keys.toList();
        break;
      case 1:
        _tvList = foreignTvLis.keys.toList();
        break;
      case 2:
        _tvList = featuredTvLis;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ScrollablePositionedList.builder(
      addAutomaticKeepAlives: true,
      itemScrollController: _controller,
      initialScrollIndex: position.listIndex,
      itemCount: _tvList.length,
      itemBuilder: (BuildContext context, int innerIndex) {
        bool _isCurIndex = PlayControlManager().afterFirstPress && position.tabIndex == widget._tabIndex && position.listIndex == innerIndex;

        ValueNotifier<bool> isCurIndex = ValueNotifier<bool>(_isCurIndex);
        bus.on(keySelectState, (arg) {
          List<String> _list = arg as List<String>;
          if (_list.contains(listItemSelect)) {
            if (position.listIndex == innerIndex && position.tabIndex == index) {
              isCurIndex.value = true;
            } else if (isCurIndex.value) {
              isCurIndex.value = false;
            }
          }
        });

        // bool isCurIndex = value == innerIndex;
        List<DropdownMenuItem<String>>? myItems = [];
        Set? sets = getSourceSet(index, innerIndex);
        sets.toList().asMap().forEach((key, value) {
          myItems.add(DropdownMenuItem<String>(
            value: value,
            child: Text("直播源${key + 1}"),
          ));
        });
        String tvName = _tvList[innerIndex];

        return ValueListenableBuilder<bool>(
            valueListenable: isCurIndex,
            builder: (BuildContext context, bool value, Widget? child) {
              return Card(
                color: isCurIndex.value ? Colors.lightBlue.shade200 : Colors.lightBlue.shade100,
                //z轴的高度，设置card的阴影
                elevation: isCurIndex.value ? 20.0 : 0.0,
                //设置shape，这里设置成了R角
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                //对Widget截取的行为，比如这里 Clip.antiAlias 指抗锯齿
                clipBehavior: Clip.antiAlias,
                semanticContainer: false,
                child: InkWell(
                    onTap: () async {
                      position.tabIndex = index;
                      position.listIndex = innerIndex;
                      bus.emit(keySelectState, [listItemSelect]);
                      List<String>? _list = (await SharedPreferences.getInstance()).getStringList("xx") ?? [];
                      _list.add(tvName);
                      SharedPreferences _preferences = await SharedPreferences.getInstance();
                      _preferences.setStringList("xx", _list);
                      PlayControlManager.instance.setResourceAndPlay(await compute(getLiveSource, tvName));
                    },
                    child: Padding(
                      child: Flex(
                        direction: Axis.horizontal,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Expanded(
                              flex: 1,
                              child: getImageProviderByUrl(getIconUrl(index, innerIndex)),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Text(
                              tvName,
                              style: isCurIndex.value
                                  ? const TextStyle(color: Colors.red, fontSize: 18)
                                  : const TextStyle(color: Colors.black, fontSize: 14),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Visibility(
                              visible: getSourceSet(index, innerIndex).length > 1,
                              child: DropdownButton<String>(
                                value: getLiveSource(tvName),
                                onChanged: (value) {
                                  setState(() {
                                    setLiveSource(tvName, value);
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
                                    if (iscotain(tvName)) {
                                      removeurl(tvName);
                                    } else {
                                      addcollect(tvName);
                                    }
                                    bus.emit(keyNotifyFavoriteList);
                                  })
                                },
                                child: iscotain(tvName) ? const Icon(Icons.favorite) : const Icon(Icons.favorite_border),
                              ),
                            ),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.only(left: 0, right: 0, top: 12, bottom: 12),
                    )),
              );
            });
      },
    ));
  }
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
        width: 50,
        height: 50.0,
        placeholder: "images/tv_dianshi.png",
        image: url);
  }
}
