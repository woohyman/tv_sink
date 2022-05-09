import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:tvSink/model/bean/user.dart';
import 'package:tvSink/model/sharePreference.dart';
import 'package:tvSink/util/log.dart';

import '../ad/TvInterstitialAd.dart';
import '../business/EventBus.dart';
import '../business/PlayControlManager.dart';
import '../business/PlaylistStateManager.dart';
import '../business/WifiManager.dart';
import '../model/bean/data.dart';
import '../util/const.dart';

class TvNameList extends StatefulWidget {
  final int _tabIndex;

  const TvNameList(this._tabIndex, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TvNameListState();
}

class _TvNameListState extends State<TvNameList> {
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
        saveFavoriteSharedPreferences(featuredTvLis).then((value) => {setState(() => {})});
      }
    });

    bus.on(keySelectState, (arg) async {
      List<String> _list = arg as List<String>;
      if (_list.contains(scrollToItemSelect)) {
        if (PlaylistStateManager.instance.position.tabIndex == widget._tabIndex) {
          _controller.jumpTo(index: PlaylistStateManager.instance.position.listIndex);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScrollablePositionedList.builder(
      addAutomaticKeepAlives: true,
      itemScrollController: _controller,
      initialScrollIndex: PlaylistStateManager.instance.position.listIndex,
      itemCount: tvData[widget._tabIndex]?.entries.length ?? 0,
      itemBuilder: (BuildContext context, int innerIndex) {
        bool _isCurIndex = PlayControlManager().afterFirstPress &&
            PlaylistStateManager.instance.position.tabIndex == widget._tabIndex &&
            PlaylistStateManager.instance.position.listIndex == innerIndex;
        ValueNotifier<bool> isCurIndex = ValueNotifier<bool>(_isCurIndex);
        bus.on(keySelectState, (arg) {
          List<String> _list = arg as List<String>;
          if (_list.contains(listItemSelect)) {
            if (PlaylistStateManager.instance.position.listIndex == innerIndex &&
                PlaylistStateManager.instance.position.tabIndex == widget._tabIndex) {
              isCurIndex.value = true;
            } else if (isCurIndex.value) {
              isCurIndex.value = false;
            }
          }
        });

        User user = PlaylistStateManager.instance.getUserByPosition(widget._tabIndex, innerIndex);

        List<DropdownMenuItem<String>>? myItems = [];
        user.tvgUrl.toList().asMap().forEach((key, value) {
          myItems.add(DropdownMenuItem<String>(
            value: value,
            child: Text("直播源${key + 1}"),
          ));
        });

        String tvName = tvData[widget._tabIndex]?.keys.elementAt(innerIndex) ?? "";

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
                            PlaylistStateManager.instance.position.tabIndex = widget._tabIndex;
                            PlaylistStateManager.instance.position.listIndex = innerIndex;
                            bus.emit(keySelectState, [listItemSelect]);
                            PlayControlManager.instance.setResourceAndPlay(tvName, PlaylistStateManager.instance.getSourceByKey(tvName));
                            saveHistorySharedPreferences(MapEntry(tvName, user));
                          });
                        },
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: getImageProviderByUrl(user.tvgLogo),
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
                                visible: user.tvgUrl.length > 1,
                                child: DropdownButton<String>(
                                  value: PlaylistStateManager.instance.getSourceByKey(tvName),
                                  onChanged: (value) {
                                    setState(() {
                                      PlaylistStateManager.instance.setLiveSource(tvName, value);
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
                                    if (PlaylistStateManager.instance.isContain(tvName)) {
                                      PlaylistStateManager.instance.removeUrl(tvName);
                                    } else {
                                      PlaylistStateManager.instance.addCollect(tvName, user.toJson());
                                    }
                                    logger.e("保存历史列表 3333");
                                    bus.emit(keyNotifyFavoriteList);
                                  })
                                },
                                child:
                                    PlaylistStateManager.instance.isContain(tvName) ? const Icon(Icons.favorite) : const Icon(Icons.favorite_border),
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
