import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:tvSink/domain/model/TvUrlList.dart';
import 'package:tvSink/domain/model/user.dart';
import 'package:tvSink/datastore/sharePreference.dart';
import 'package:tvSink/util/log.dart';

import '../ad/TvInterstitialAd.dart';
import '../datastore/OptionalUrlDbControl.dart';
import '../datastore/RemoteUrlControl.dart';
import '../domain/PlayControlManager.dart';
import '../domain/PlaylistStateManager.dart';
import '../domain/WifiManager.dart';
import '../mock/data.dart';
import '../routes/RouterTable.dart';
import '../util/const.dart';

class TvNameList extends StatefulWidget {
  final int _tabIndex;

  const TvNameList(this._tabIndex, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TvNameListState();
}

class _TvNameListState extends State<TvNameList> {
  final ItemScrollController _controller = ItemScrollController();
  final RemoteUrlControl _remoteUrlControl = RemoteUrlControl();
  final OptionalUrlDbControl _optionalUrlDbControl = OptionalUrlDbControl();

  @override
  void initState() {
    super.initState();

    print("123456789 --> initState | _tabIndex =  ${widget._tabIndex}");

    _optionalUrlDbControl.initDatabase().then((vale) {
      _optionalUrlDbControl.dogs().then((value) {
        print("//////////// --> $value");
        setState(() {
          value.forEach((value) {
            if (foreignTvLis.containsKey(value.name)) {
              (foreignTvLis[value.name]["tvgUrl"] as List<String>)
                  .add(value.tvgUrl);
            } else {
              foreignTvLis[value.name] = <String, dynamic>{
                "tvgId": value.tvgId,
                "tvgCountry": value.tvgCountry,
                "tvgLanguage": value.tvgLanguage,
                "tvgLogo": value.tvgLogo,
                "groupTitle": value.groupTitle,
                "tvgUrl": [value.tvgUrl],
              };
            }
          });
        });

      });
    });

    print("//////////// 注册bus-->${widget._tabIndex} ");
    eventBus.on().listen((event) {
      print("//////////// --> listen ${event}");
      switch (event) {
        case keyImportState:
          setState(() {

          });
          _optionalUrlDbControl.deleteAll();
          print("//////////// -->${widget._tabIndex} : 开始写数据 ${foreignTvLis.keys}");
          foreignTvLis.forEach((val1, val2) {

            (val2["tvgUrl"] as List<dynamic>).forEach((item) {
              _optionalUrlDbControl
                  .insertDog(TvUrlList(
                name: val1,
                tvgId: val2["tvgId"],
                tvgCountry: val2["tvgCountry"],
                tvgLanguage: val2["tvgLanguage"],
                tvgLogo: val2["tvgLogo"],
                groupTitle: val2["groupTitle"],
                tvgUrl: item,
              ))
                  .then((value) {
                // print("//////////// --> 塞入成功");
              });
            });
          });


          break;
      }
    });

    _remoteUrlControl.fetchDefaultUrlList().then((value) {
      setState(() {});
    });

    fetchFavoriteSharedPreferences().then((value) {
      featuredTvLis.clear();
      featuredTvLis.addAll(value);
    });

    eventBus.on<MapEntry<String, dynamic>>().listen((event) {
      switch (event.key) {
        case keyNotifyFavoriteList:
          if (widget._tabIndex == 2) {
            saveFavoriteSharedPreferences(featuredTvLis)
                .then((value) => {setState(() => {})});
          }
          break;
        case keySelectState:
          List<String> _list = event.value as List<String>;
          if (_list.contains(scrollToItemSelect)) {
            if (PlaylistStateManager.instance.position.tabIndex ==
                widget._tabIndex) {
              _controller.jumpTo(
                  index: PlaylistStateManager.instance.position.listIndex);
            }
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    print("//////////// --> ${widget._tabIndex} : ${tvData[widget._tabIndex]?.keys}");
    int length = tvData[widget._tabIndex]?.entries.length ?? 0;
    if (length <= 0) {
      return Container(
          alignment: Alignment.center,
          child: getEmptyAlert(widget._tabIndex, () {
            EasyLoading.showInfo('正在加载数据中!');
            _remoteUrlControl.fetchDefaultUrlList().then((value) {
              setState(() {});
            });
          }, () {
            Navigator.of(context).pushNamed(RouterTable.parseUrlListRoute);
          }));
    }
    return RefreshIndicator(
      onRefresh: () async {
        _remoteUrlControl.fetchDefaultUrlList().then((value) {
          setState(() {});
        });
      },
      child: ScrollablePositionedList.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        addAutomaticKeepAlives: true,
        itemScrollController: _controller,
        initialScrollIndex: PlaylistStateManager.instance.position.listIndex,
        itemCount: length,
        itemBuilder: (BuildContext context, int innerIndex) {
          bool _isCurIndex = PlayControlManager().afterFirstPress &&
              PlaylistStateManager.instance.position.tabIndex ==
                  widget._tabIndex &&
              PlaylistStateManager.instance.position.listIndex == innerIndex;
          ValueNotifier<bool> isCurIndex = ValueNotifier<bool>(_isCurIndex);

          eventBus.on<MapEntry<String, dynamic>>().listen((event) {
            switch (event.key) {
              case keySelectState:
                List<String> _list = event.value as List<String>;
                if (_list.contains(listItemSelect)) {
                  if (PlaylistStateManager.instance.position.listIndex ==
                          innerIndex &&
                      PlaylistStateManager.instance.position.tabIndex ==
                          widget._tabIndex) {
                    isCurIndex.value = true;
                  } else if (isCurIndex.value) {
                    isCurIndex.value = false;
                  }
                }
                break;
            }
          });

          User user = PlaylistStateManager.instance
              .getUserByPosition(widget._tabIndex, innerIndex);

          List<DropdownMenuItem<String>>? myItems = [];
          user.tvgUrl.toList().asMap().forEach((key, value) {
            myItems.add(DropdownMenuItem<String>(
              value: value,
              child: Text("直播源${key + 1}"),
            ));
          });

          String tvName =
              tvData[widget._tabIndex]?.keys.elementAt(innerIndex) ?? "";

          return Column(
            children: [
              ValueListenableBuilder<bool>(
                  valueListenable: isCurIndex,
                  builder: (BuildContext context, bool value, Widget? child) {
                    return Card(
                      color: isCurIndex.value
                          ? Colors.lightBlue.shade200
                          : Colors.lightBlue.shade100,
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
                            eventBus.fire(const MapEntry(
                                keySelectState, [listItemSelect]));

                            if (WifiManager.instance.isNeedConnectWithWifi) {
                              logger.i("====> 发送 keyWifiCompulsion");
                              eventBus.fire(
                                  const MapEntry(keyWifiCompulsion, null));
                              PlayControlManager.instance.pause();
                              return;
                            }

                            await TvInterstitialAd.instance.load();
                            TvInterstitialAd.instance.showAd(tvName, () {
                              PlaylistStateManager.instance.position.tabIndex =
                                  widget._tabIndex;
                              PlaylistStateManager.instance.position.listIndex =
                                  innerIndex;
                              logger.i("====> 发送 keySelectState");
                              eventBus.fire(const MapEntry(
                                  keySelectState, [listItemSelect]));
                              PlayControlManager.instance.setResourceAndPlay(
                                  tvName,
                                  PlaylistStateManager.instance
                                      .getSourceByKey(tvName));
                              saveHistorySharedPreferences(
                                  MapEntry(tvName, user));
                            });
                          },
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: getImageProviderByUrl(user.tvgLogo),
                                height: 50,
                                width: 50,
                                margin: const EdgeInsets.only(
                                    left: 12, right: 10, top: 5, bottom: 5),
                              ),
                              Expanded(
                                flex: 4,
                                child: Text(
                                  tvName,
                                  style: isCurIndex.value
                                      ? const TextStyle(
                                          color: Colors.red, fontSize: 18)
                                      : const TextStyle(
                                          color: Colors.black, fontSize: 14),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Visibility(
                                  visible: user.tvgUrl.length > 1,
                                  child: DropdownButton<String>(
                                    value: PlaylistStateManager.instance
                                        .getSourceByKey(tvName),
                                    onChanged: (value) {
                                      setState(() {
                                        PlaylistStateManager.instance
                                            .setLiveSource(tvName, value);
                                      });
                                    },
                                    items: myItems,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 5, right: 10, top: 0, bottom: 0),
                                child: InkWell(
                                  onTap: () => {
                                    setState(() {
                                      if (PlaylistStateManager.instance
                                          .isContain(tvName)) {
                                        PlaylistStateManager.instance
                                            .removeUrl(tvName);
                                      } else {
                                        PlaylistStateManager.instance
                                            .addCollect(tvName, user.toJson());
                                      }
                                      eventBus.fire(const MapEntry(
                                          keyNotifyFavoriteList, null));
                                    })
                                  },
                                  child: PlaylistStateManager.instance
                                          .isContain(tvName)
                                      ? const Icon(Icons.favorite)
                                      : const Icon(Icons.favorite_border),
                                ),
                              ),
                            ],
                          )),
                    );
                  })
            ],
          );
        },
      ),
    );
  }
}

Widget getEmptyAlert(
    int index, void Function() operation, void Function() operation2) {
  if (index == 2) {
    return const Text(
      "无数据",
      style: TextStyle(fontSize: 20.0),
    );
  } else if (index == 1) {
    return InkWell(
        onTap: () {
          operation2();
        },
        child: const Text(
          "点击导入数据",
          style: TextStyle(fontSize: 20.0),
        ));
  } else {
    return InkWell(
        onTap: () {
          operation();
        },
        child: const Text(
          "无数据,点击重新加载",
          style: TextStyle(fontSize: 20.0),
        ));
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
