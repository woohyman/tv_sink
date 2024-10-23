import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../control/usecase/PlayUseCase.dart';
import '../../control/WatchListsController.dart';
import '../../domain/model/user.dart';

class ItemView extends StatefulWidget {
  final User _user;

  const ItemView(this._user, {Key? key}) : super(key: key);

  @override
  State<ItemView> createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {
  final _favorListController = Get.find<CollectionListsController>();
  final _playPosController = Get.find<PlayPositionController>();

  @override
  Widget build(BuildContext context) {
    final user = widget._user;
    final tvName = user.name;

    final myItems = <DropdownMenuItem<String>>[];
    user.tvgUrl.toList().asMap().forEach((key, value) {
      myItems.add(DropdownMenuItem<String>(
        value: value,
        child: Text("直播源${key + 1}"),
      ));
    });

    return Obx(() {
      return Column(
        children: [
          Card(
            color: _playPosController.user.value?.name == user.name
                ? Colors.lightBlue.shade200
                : Colors.lightBlue.shade100,
            //z轴的高度，设置card的阴影
            elevation:
                _playPosController.user.value?.name == user.name ? 20.0 : 0.0,
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
                    PlayUseCase().invoke(user);
                  });
                },
                child: Row(
                  children: <Widget>[
                    Container(
                      child: getImageProviderByUrl(user.tvgLogo),
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
                        style: _playPosController.user.value?.name == user.name
                            ? const TextStyle(color: Colors.red, fontSize: 18)
                            : const TextStyle(
                                color: Colors.black, fontSize: 14),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Visibility(
                        visible: user.tvgUrl.length > 1,
                        child: DropdownButton<String>(
                          value: myItems.firstOrNull?.value??"",
                          onChanged: (value) {
                            setState(() {
                              _playPosController.setUrl(value??"");
                            });
                          },
                          items: myItems,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 5, right: 10, top: 0, bottom: 0),
                      child: InkWell(
                        onTap: () => {
                          setState(() {
                            _favorListController.selectOrNot(
                                tvName, user.toJson());
                          })
                        },
                        child: _favorListController.list.containsKey(tvName)
                            ? const Icon(Icons.favorite)
                            : const Icon(Icons.favorite_border),
                      ),
                    ),
                  ],
                )),
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
