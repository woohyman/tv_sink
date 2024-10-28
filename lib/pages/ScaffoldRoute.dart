import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:tv_sink/domain/data_provider/AppSetDataProvider.dart';
import 'package:tv_sink/widgets/list/FavoriteChannelsList.dart';
import 'package:tv_sink/widgets/list/FeaturedChannelsList.dart';
import 'package:tv_sink/widgets/list/OptionalChannelsList.dart';
import '../domain/PlayController.dart';
import '../domain/ad/AppLifecycleReactor.dart';
import '../domain/ad/AppOpenAdManager.dart';
import '../domain/ad/banner/AnchorAdapter.dart';
import '../domain/data_provider/PlayDataProvider.dart';
import '../domain/data_provider/WatchListsDataProvider.dart';
import '../domain/upgrade/UpgradeController.dart';
import '../widgets/KeepAliveTest.dart';
import '../widgets/PlayerWrapper.dart';
import '../widgets/SliderLeft.dart';

class ScaffoldRoute extends StatefulWidget {
  const ScaffoldRoute({Key? key}) : super(key: key);

  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<ScaffoldRoute> {
  final _selectedIndex = ValueNotifier<int>(0);
  final _pageController = PageController();
  final _anchorAdapter = AnchorAdapter();
  final _upgradeController = UpgradeController.fromGet();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _anchorAdapter.loadAd(context, () => setState(() => {}));
  }

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();

    _upgradeController.showDialog(context);

    AppOpenAdManager appOpenAdManager = AppOpenAdManager()..loadAd();
    WidgetsBinding.instance
        .addObserver(AppLifecycleReactor(appOpenAdManager: appOpenAdManager));
  }

  @override
  void dispose() {
    _anchorAdapter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    UpgradeController.fromGet().init(context);

    return Scaffold(
        appBar: AppBar(
          actions: [
            Obx(() {
              final tvName = PlayDataProvider.fromGet().tvInfo.value?.key;
              return Container(
                width: 200,
                margin: const EdgeInsets.only(
                  left: 5,
                  right: 10,
                  top: 0,
                  bottom: 0,
                ),
                child: Visibility(
                  visible: tvName != null,
                  child: AutoSizeText(
                    "$tvName",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              );
            }),
            Obx(
              () {
                final myItems = <DropdownMenuItem<String>>[];
                final playProvider = PlayDataProvider.fromGet();
                final appSettingProvider = AppSetDataProvider.fromGet();
                final urlList = playProvider.tvInfo.value?.value.tvgUrlList;
                final showDropDoan = !appSettingProvider.autoSourceSwitch &&
                    urlList != null &&
                    urlList.length > 1;

                urlList?.asMap().forEach((key, value) {
                  myItems.add(DropdownMenuItem<String>(
                    value: value,
                    child: Text("直播源${key + 1}"),
                  ));
                });

                final index = urlList
                        ?.indexOf(playProvider.selectUrl.value.value ?? "") ??
                    0;
                return Visibility(
                  visible: urlList == null ? false : urlList.length > 1,
                  child: showDropDoan
                      ? DropdownButton<String>(
                          onChanged: (value) {
                            PlayController.instance.playSource(
                                playProvider.tvInfo.value!,
                                tvgUrl: value);
                          },
                          value: playProvider.selectUrl.value.value,
                          items: myItems,
                        )
                      : Text("直播源${index + 1}"),
                );
              },
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 5,
                right: 10,
                top: 0,
                bottom: 0,
              ),
              child: Obx(() {
                final _favorListController =
                    Get.find<CollectionListsDataProvider>();
                final tvInfo = PlayDataProvider.fromGet().tvInfo.value;
                return Visibility(
                  visible: tvInfo != null,
                  child: InkWell(
                    onTap: () => _favorListController.selectOrNot(tvInfo),
                    child: _favorListController.list.keys.contains(tvInfo?.key)
                        ? const Icon(Icons.favorite)
                        : const Icon(Icons.favorite_border),
                  ),
                );
              }),
            ),
          ],
        ),
        drawer: const SliderLeft(),
        body: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            PlayerWrapper(),
            _anchorAdapter.getWidget(),
            Expanded(
              flex: 1,
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  _onItemTapped(index);
                },
                children: const <Widget>[
                  KeepAliveWrapper(
                    child: FeaturedChannelsList(),
                    keepAlive: true,
                  ),
                  KeepAliveWrapper(
                    child: OptionalChannelsList(),
                    keepAlive: true,
                  ),
                  KeepAliveWrapper(
                    child: FavoriteChannelsList(),
                    keepAlive: true,
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: ValueListenableBuilder<int>(
          builder: (BuildContext context, int value, Widget? child) {
            return BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.airplay), label: '精选频道'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.airplay), label: '自选频道'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.airplay), label: '收藏频道'),
              ],
              currentIndex: value,
              fixedColor: Colors.blue,
              onTap: (index) async {
                _onItemTapped(index);
              },
            );
          },
          valueListenable: _selectedIndex,
        ));
  }

  void _onItemTapped(int index) {
    _pageController.jumpToPage(index);
    _selectedIndex.value = index;
  }
}
