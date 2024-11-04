import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:tv_sink/base/base_future_builder.dart';
import '../logic.dart';
import '../../../../../domain/data_provider/play_list_data_provider.dart';
import 'ItemView.dart';

class FavoriteChannelsList
    extends GetView<PlayListLogic<CollectPlayListDataProvider>> {
  const FavoriteChannelsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _scrollController = ItemScrollController();
    return BaseFutureBuilder(
      stream: controller.dataProvider.list.subject,
      future: controller.fetchData(),
      builder: (data, update) {
        return ScrollablePositionedList.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          addAutomaticKeepAlives: true,
          itemScrollController: _scrollController,
          initialScrollIndex: 0,
          itemCount: data.length,
          itemBuilder: (BuildContext context, int innerIndex) {
            return ItemView(data.entries.elementAt(innerIndex));
          },
        );
      },
    );
  }
}
