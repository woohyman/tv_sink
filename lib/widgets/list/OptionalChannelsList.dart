import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../ad/TvInterstitialAd.dart';
import '../../datastore/OptionalUrlDbControl.dart';
import '../../datastore/RemoteUrlControl.dart';
import '../../datastore/sharePreference.dart';
import '../../domain/PlayControlManager.dart';
import '../../domain/PlaylistStateManager.dart';
import '../../domain/WifiManager.dart';
import '../../domain/model/TvUrlList.dart';
import '../../domain/model/user.dart';
import '../../provider/watch_lists_controller.dart';
import '../../routes/RouterTable.dart';
import '../../util/const.dart';
import '../../util/log.dart';

class OptionalChannelsList extends StatefulWidget {
  final int _tabIndex;

  const OptionalChannelsList(this._tabIndex, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TvNameListState();
}

class _TvNameListState extends State<OptionalChannelsList> {
  final ItemScrollController _controller = ItemScrollController();
  final RemoteUrlControl _remoteUrlControl = RemoteUrlControl();
  final OptionalUrlDbControl _optionalUrlDbControl = OptionalUrlDbControl();
  final foreignTvLisController = Get.find<WatchListsController>();
  final featuredTvLisController = Get.find<CollectionListsController>();

  @override
  void initState() {
    super.initState();

    _optionalUrlDbControl.dogs().then((value) {
      setState(() {
        final Map<String, dynamic> _foreignTvLis = <String, dynamic>{};
        for (var value in value) {
          if (_foreignTvLis.containsKey(value.name)) {
            (_foreignTvLis[value.name]["tvgUrl"] as List<String>)
                .add(value.tvgUrl);
          } else {
            _foreignTvLis[value.name] = <String, dynamic>{
              "tvgId": value.tvgId,
              "tvgCountry": value.tvgCountry,
              "tvgLanguage": value.tvgLanguage,
              "tvgLogo": value.tvgLogo,
              "groupTitle": value.groupTitle,
              "tvgUrl": [value.tvgUrl],
            };
          }
          foreignTvLisController.setWatchLists(_foreignTvLis);
          logger.i("test001 ===> " + foreignTvLisController.list.toString());
        }
      });
    });

    eventBus.on().listen((event) {
      switch (event) {
        case keyImportState:
          setState(() {});
          _optionalUrlDbControl.deleteAll();
          foreignTvLisController.list.forEach((val1, val2) {
            for (var item in (val2["tvgUrl"] as List<dynamic>)) {
              _optionalUrlDbControl.insertDog(TvUrlList(
                name: val1,
                tvgId: val2["tvgId"],
                tvgCountry: val2["tvgCountry"],
                tvgLanguage: val2["tvgLanguage"],
                tvgLogo: val2["tvgLogo"],
                groupTitle: val2["groupTitle"],
                tvgUrl: item,
              ));
            }
          });
          break;
      }
    });

    _remoteUrlControl.fetchDefaultUrlList().then((value) {
      setState(() {});
    });

    fetchFavoriteSharedPreferences().then((value) {
      featuredTvLisController.setWatchLists(value);
    });

    eventBus.on<MapEntry<String, dynamic>>().listen((event) {
      switch (event.key) {
        case keyNotifyFavoriteList:
          if (widget._tabIndex == 2) {
            saveFavoriteSharedPreferences(featuredTvLisController.list)
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
                                      featuredTvLisController.selectOrNot(
                                          tvName, user.toJson());
                                      eventBus.fire(const MapEntry(
                                          keyNotifyFavoriteList, null));
                                    })
                                  },
                                  child: Obx(() {
                                    return featuredTvLisController.list
                                        .containsKey(tvName)
                                        ? const Icon(Icons.favorite)
                                        : const Icon(Icons.favorite_border);
                                  }),
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
