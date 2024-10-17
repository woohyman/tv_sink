import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../control/WatchListsController.dart';
import '../../control/usecase/GetOptionalTvList.dart';
import '../../data/OptionalUrlDbControl.dart';
import '../../data/RemoteUrlControl.dart';
import '../../domain/PlaylistStateManager.dart';
import '../../domain/model/TvUrlList.dart';
import '../../routes/RouterTable.dart';
import '../../util/const.dart';
import '../../util/log.dart';
import 'ItemView.dart';

class OptionalChannelsList extends StatefulWidget {
  const OptionalChannelsList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TvNameListState();
}

class _TvNameListState extends State<OptionalChannelsList> {
  final foreignTvLisController = Get.find<WatchListsController>();
  final featuredTvLisController = Get.find<CollectionListsController>();
  final _watchListsController = Get.find<WatchListsController>();

  final _remoteUrlControl = RemoteUrlControl();
  final _scrollController = ItemScrollController();
  final _getOptionalTvList = GetOptionalTvList();

  @override
  void initState() {
    super.initState();
    _getOptionalTvList.invoke();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        _remoteUrlControl.fetchDefaultUrlList().then((value) {
          setState(() {});
        });
      },
      child: Obx(() {
        return Stack(
          children: [
            Visibility(
              visible: _watchListsController.list.isEmpty,
              child: Container(
                  alignment: Alignment.center,
                  child: InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(RouterTable.parseUrlListRoute);
                      },
                      child: const Text(
                        "点击导入数据",
                        style: TextStyle(fontSize: 20.0),
                      ))),
            ),
            ScrollablePositionedList.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              addAutomaticKeepAlives: true,
              itemScrollController: _scrollController,
              initialScrollIndex:
                  PlaylistStateManager.instance.position.listIndex,
              itemCount: _watchListsController.list.length,
              itemBuilder: (BuildContext context, int innerIndex) {
                final user = _watchListsController.getItemByIndex(innerIndex);
                return ItemView(user);
              },
            )
          ],
        );
      }),
    );
  }
}
