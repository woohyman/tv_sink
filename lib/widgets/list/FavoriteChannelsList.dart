import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:tv_sink/data/db/CollectionDbRepository.dart';
import 'package:tv_sink/util/log.dart';
import 'package:tv_sink/widgets/list/ItemView.dart';
import '../../domain/PlaylistStateManager.dart';
import '../../domain/data_provider/WatchListsController.dart';

class FavoriteChannelsList extends StatefulWidget {
  const FavoriteChannelsList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TvNameListState();
}

class _TvNameListState extends State<FavoriteChannelsList> {
  final _scrollController = ItemScrollController();
  final _collectionListsController = Get.find<CollectionListsController>();
  final _collectionDbControl = CollectionDbRepository();

  @override
  void initState() {
    super.initState();
    //读取本地的列表数据
    _collectionDbControl.dogs().then((value){
      _collectionListsController.setWatchLists(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    logger.i("------》 build");
    return Obx(() {
      return Stack(
        children: [
          Visibility(
            visible: _collectionListsController.list.isEmpty,
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
            itemCount: _collectionListsController.list.length,
            itemBuilder: (BuildContext context, int innerIndex) {
              final user = _collectionListsController.getItemByIndex(innerIndex);
              return ItemView(user);
            },
          )
        ],
      );
    });
  }
}
