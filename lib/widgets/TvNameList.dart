import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:tvSink/model/sharePreference.dart';

import '../ad/TvInterstitialAd.dart';
import '../business/EventBus.dart';
import '../business/PlayControlManager.dart';
import '../business/WifiManager.dart';
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

    fetchFavoriteSharedPreferences().then((value) {
      featuredTvLis.clear();
      featuredTvLis.addAll(value);
    });

    bus.on(keyNotifyFavoriteList, (arg) async {
      if (widget._tabIndex == 2) {
        saveFavoriteSharedPreferences(featuredTvLis).then((value) => {setState(() {})});
      }
    });

    bus.on(keySelectState, (arg) async {
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
    return ScrollablePositionedList.builder(
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

        List<DropdownMenuItem<String>>? myItems = [];
        Set? sets = getSourceSet(index, innerIndex);
        sets.toList().asMap().forEach((key, value) {
          myItems.add(DropdownMenuItem<String>(
            value: value,
            child: Text("直播源${key + 1}"),
          ));
        });
        String tvName = _tvList[innerIndex];

        return Column(
          children: [
            ValueListenableBuilder<bool>(
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
                          if (WifiManager.instance.isNeedConnectWithWifi()) {
                            bus.emit(keyWifiCompulsion);
                            PlayControlManager.instance.pause();
                            return;
                          }

                          await TvInterstitialAd.instance.load();
                          TvInterstitialAd.instance.showAd(tvName, () {
                            position.tabIndex = index;
                            position.listIndex = innerIndex;
                            bus.emit(keySelectState, [listItemSelect]);
                            PlayControlManager.instance.setResourceAndPlay(tvName, getLiveSource(tvName));
                            saveHistorySharedPreferences(tvName);
                          });
                        },
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: getImageProviderByUrl(getIconUrl(index, innerIndex)),
                              height: 50,
                              width: 50,
                              margin: const EdgeInsets.only(left: 12, right: 10, top: 5, bottom: 5),
                            ),
                            Expanded(
                              flex: 4,
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
                            Container(
                              margin: const EdgeInsets.only(left: 5, right: 10, top: 0, bottom: 0),
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
                          ],
                        )),
                  );
                })
          ],
        );
      },
    );
  }
}

Widget getImageProviderByUrl(String url) {
  const double size = 180.0;
  if (url.isEmpty) {
    return Image.asset(
      "images/tv_dianshi.png",
    );
  } else {
    return FadeInImage.assetNetwork(
        imageErrorBuilder: (context, error, stackTrace) {
          return Image.asset(
            "images/tv_dianshi.png",
          );
        },
        placeholder: "images/tv_dianshi.png",
        image: url);
  }
}
