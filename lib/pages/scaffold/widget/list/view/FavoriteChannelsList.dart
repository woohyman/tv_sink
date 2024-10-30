import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../../../../../util/log.dart';
import '../logic.dart';
import '../../../../../domain/data_provider/play_list_data_provider.dart';
import 'ItemView.dart';

class FavoriteChannelsList
    extends GetView<PlayListLogic<CollectPlayListDataProvider>> {
  const FavoriteChannelsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _scrollController = ItemScrollController();
    return Obx(() {
      return Stack(
        children: [
          Visibility(
            visible: controller.list.isEmpty,
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
            initialScrollIndex: 0,
            itemCount: controller.list.length,
            itemBuilder: (BuildContext context, int innerIndex) {
              final user = controller.getItemByIndex(innerIndex);
              return ItemView(user);
            },
          )
        ],
      );
    });
  }
}
