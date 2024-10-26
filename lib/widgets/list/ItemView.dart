import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tv_sink/data/db/CollectionDbRepository.dart';
import 'package:tv_sink/domain/model/TvInfo.dart';
import 'package:tv_sink/util/log.dart';

import '../../domain/PlayController.dart';
import '../../domain/data_provider/PlayDataProvider.dart';
import '../../domain/data_provider/WatchListsController.dart';

class ItemView extends StatefulWidget {
  final MapEntry<String, TvInfo> _user;

  const ItemView(this._user, {Key? key}) : super(key: key);

  @override
  State<ItemView> createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {
  final _favorListController = Get.find<CollectionListsController>();
  final _playController = Get.find<PlayDataProvider>();

  @override
  Widget build(BuildContext context) {
    final user = widget._user;
    final tvName = user.key;

    final myItems = <DropdownMenuItem<String>>[];
    user.value.tvgUrlList.asMap().forEach((key, value) {
      myItems.add(DropdownMenuItem<String>(
        value: value,
        child: Text("直播源${key + 1}"),
      ));
    });

    return Obx(() {
      return Column(
        children: [
          Card(
            color: _playController.tvInfo.value?.key == user.key
                ? Colors.lightBlue.shade200
                : Colors.lightBlue.shade100,
            //z轴的高度，设置card的阴影
            elevation: _playController.tvInfo.value?.key == user.key ? 20.0 : 0.0,
            //设置shape，这里设置成了R角
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            //对Widget截取的行为，比如这里 Clip.antiAlias 指抗锯齿
            clipBehavior: Clip.antiAlias,
            semanticContainer: false,
            child: InkWell(
              onTap: () {
                setState(() {
                  PlayController.instance.playSource(user);
                });
              },
              child: Row(
                children: <Widget>[
                  Container(
                    child: getImageProviderByUrl(user.value.tvgLogo),
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.only(
                      left: 12,
                      right: 10,
                      top: 5,
                      bottom: 5,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(
                      tvName,
                      style: _playController.tvInfo.value?.key == user.key
                          ? const TextStyle(color: Colors.red, fontSize: 18)
                          : const TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Visibility(
                      visible: user.value.tvgUrlList.length > 1,
                      child: DropdownButton<String>(
                        value: myItems.firstOrNull?.value ?? "",
                        onChanged: (value) {
                          setState(() {
                            _playController.setUrl(value ?? "");
                          });
                        },
                        items: myItems,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 5,
                      right: 10,
                      top: 0,
                      bottom: 0,
                    ),
                    child: InkWell(
                      onTap: () => _favorListController.selectOrNot(user),
                      child: Obx(
                        () {
                          return _favorListController.list.keys.contains(tvName)
                              ? const Icon(Icons.favorite)
                              : const Icon(Icons.favorite_border);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      );
    });
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
