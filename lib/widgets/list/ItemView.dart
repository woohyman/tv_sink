import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tv_sink/domain/model/TvInfo.dart';
import 'package:tv_sink/util/log.dart';
import '../../domain/PlayController.dart';
import '../../domain/data_provider/PlayDataProvider.dart';

class ItemView extends StatefulWidget {
  final MapEntry<String, TvInfo> _user;

  const ItemView(this._user, {Key? key}) : super(key: key);

  @override
  State<ItemView> createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {
  final _playDataProvider = Get.find<PlayDataProvider>();

  @override
  Widget build(BuildContext context) {
    final user = widget._user;
    final tvName = user.key;

    return Obx(() {
      return Column(
        children: [
          Card(
            color: _playDataProvider.tvInfo.value?.key == user.key
                ? Colors.lightBlue.shade200
                : Colors.lightBlue.shade100,
            //z轴的高度，设置card的阴影
            elevation:
                _playDataProvider.tvInfo.value?.key == user.key ? 20.0 : 0.0,
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
                    child: Text(
                      tvName,
                      style: _playDataProvider.tvInfo.value?.key == user.key
                          ? const TextStyle(color: Colors.red, fontSize: 18)
                          : const TextStyle(color: Colors.black, fontSize: 14),
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
