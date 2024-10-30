import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../../../../../util/log.dart';
import '../logic.dart';
import '../../../../../routes/RouterTable.dart';
import '../../../../../domain/data_provider/play_list_data_provider.dart';
import 'ItemView.dart';

class OptionalChannelsList
    extends GetView<PlayListLogic<OptionalPlayListDataProvider>> {
  const OptionalChannelsList({Key? key}) : super(key: key);

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
