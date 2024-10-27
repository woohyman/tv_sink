import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../../data/net/RemoteUrlRepository.dart';
import '../../domain/data_provider/WatchListsDataProvider.dart';
import 'ItemView.dart';

class FeaturedChannelsList extends StatefulWidget {
  const FeaturedChannelsList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TvNameListState();
}

class _TvNameListState extends State<FeaturedChannelsList> {
  final ItemScrollController _scrollController = ItemScrollController();
  final _remoteUrlControl = RemoteUrlRepository();
  final _featuredTvLisController = FeatureListsDataProvider();

  @override
  void initState() {
    _remoteUrlControl.fetchDefaultUrlList().then((value) {
      setState(() {
        _featuredTvLisController.setWatchLists(value);
      });
    });

    super.initState();
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
              visible: _featuredTvLisController.list.isEmpty,
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  "无数据,请稍后重试.",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            ScrollablePositionedList.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              addAutomaticKeepAlives: true,
              itemScrollController: _scrollController,
              initialScrollIndex: 0,
              itemCount: _featuredTvLisController.list.length,
              itemBuilder: (BuildContext context, int innerIndex) {
                final user =
                    _featuredTvLisController.getItemByIndex(innerIndex);
                return ItemView(user);
              },
            )
          ],
        );
      }),
    );
  }
}
