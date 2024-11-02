import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tv_sink/pages/scaffold/widget/ad/anchor_widget.dart';
import 'package:tv_sink/pages/scaffold/widget/list/view/favorite_channels_list.dart';
import 'package:tv_sink/pages/scaffold/widget/list/view/featured_channels_list.dart';
import 'package:tv_sink/pages/scaffold/widget/list/view/optional_channels_list.dart';
import 'package:tv_sink/util/log_util.dart';
import '../../domain/data_provider/app_set_data_provider.dart';
import '../../domain/data_provider/play_data_provider.dart';
import '../../domain/data_provider/play_list_data_provider.dart';
import '../../domain/play/play_manager.dart';
import '../../widgets/keep_alive_wrapper.dart';
import '../../widgets/player_wrapper.dart';
import 'widget/SliderLeft.dart';
import 'logic.dart';

class ScaffoldRoute extends GetView<ScaffoldLogic> {
  const ScaffoldRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _pageController = PageController();
    controller.init(context);

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

              final index =
                  urlList?.indexOf(playProvider.selectUrl.value.value ?? "") ??
                      0;
              return Visibility(
                visible: urlList == null ? false : urlList.length > 1,
                child: showDropDoan
                    ? DropdownButton<String>(
                        onChanged: (value) {
                          PlayManager.instant.playSource(
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
              final _collectProvider = CollectPlayListDataProvider.fromGet();
              final _tvInfo = PlayDataProvider.fromGet().tvInfo;
              return Visibility(
                visible: _tvInfo.value != null,
                child: InkWell(
                  onTap: () => _collectProvider.selectOrNot(_tvInfo.value),
                  child: _collectProvider.list.keys.contains(_tvInfo.value?.key)
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
          const AnchorWidget(),
          Expanded(
            flex: 1,
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                _pageController.jumpToPage(index);
                controller.selectedIndex = index;
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
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.airplay), label: '精选频道'),
            BottomNavigationBarItem(icon: Icon(Icons.airplay), label: '自选频道'),
            BottomNavigationBarItem(icon: Icon(Icons.airplay), label: '收藏频道'),
          ],
          currentIndex: controller.selectedIndex,
          fixedColor: Colors.blue,
          onTap: (index) async {
            _pageController.jumpToPage(index);
            controller.selectedIndex = index;
          },
        );
      }),
    );
  }
}
