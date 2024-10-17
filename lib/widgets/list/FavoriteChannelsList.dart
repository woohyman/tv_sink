import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:tv_sink/util/log.dart';
import 'package:tv_sink/widgets/list/ItemView.dart';

import '../../control/WatchListsController.dart';
import '../../data/SharePreference.dart';
import '../../domain/PlaylistStateManager.dart';

class FavoriteChannelsList extends StatefulWidget {
  const FavoriteChannelsList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TvNameListState();
}

class _TvNameListState extends State<FavoriteChannelsList> {
  final _scrollController = ItemScrollController();
  final _favorListController = Get.find<CollectionListsController>();

  @override
  void initState() {
    super.initState();
    //读取本地的列表数据
    fetchFavoriteSharedPreferences().then((value) {
      _favorListController.setWatchLists(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Stack(
        children: [
          Visibility(
            visible: _favorListController.list.isEmpty,
            child: Container(
                alignment: Alignment.center,
                child: const Text(
                  "无数据",
                  style: TextStyle(fontSize: 20.0),
                )),
          ),
          ScrollablePositionedList.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            addAutomaticKeepAlives: true,
            itemScrollController: _scrollController,
            initialScrollIndex:
                PlaylistStateManager.instance.position.listIndex,
            itemCount: _favorListController.list.length,
            itemBuilder: (BuildContext context, int innerIndex) {
              final user = _favorListController.getItemByIndex(innerIndex);
              return ItemView(user);
            },
          )
        ],
      );
    });
  }
}
