import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../domain/data_provider/play_data_provider.dart';
import '../../../../../domain/model/tv_channel_info_model.dart';
import '../../../../../domain/play/play_manager.dart';

class ItemView extends GetView<PlayDataProvider> {
  final MapEntry<String, TvChannelInfoModel> _user;

  const ItemView(this._user, {super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Column(
          children: [
            Card(
              color: controller.tvInfo.value?.key == _user.key
                  ? Colors.lightBlue.shade200
                  : Colors.lightBlue.shade100,
              //z轴的高度，设置card的阴影
              elevation: controller.tvInfo.value?.key == _user.key ? 20.0 : 0.0,
              //设置shape，这里设置成了R角
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              //对Widget截取的行为，比如这里 Clip.antiAlias 指抗锯齿
              clipBehavior: Clip.antiAlias,
              semanticContainer: false,
              child: InkWell(
                onTap: () => PlayManager.fromGet().playEntry(_user),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: getImageProviderByUrl(_user.value.tvgLogo),
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
                        _user.key,
                        style: controller.tvInfo.value?.key == _user.key
                            ? const TextStyle(color: Colors.red, fontSize: 18)
                            : const TextStyle(
                                color: Colors.black, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
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
