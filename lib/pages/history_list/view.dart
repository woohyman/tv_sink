import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tv_sink/pages/history_list/logic.dart';
import '../../domain/play/play_manager.dart';
import '../scaffold/widget/list/view/ItemView.dart';

class HistoryRoute extends GetView<HistoryListLogic> {
  const HistoryRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("历史记录")),
      body: Stack(
        children: [
          Visibility(
            visible: controller.list.isEmpty,
            child: Container(
                alignment: Alignment.center,
                child: const Text(
                  "暂无历史数据",
                  style: TextStyle(fontSize: 20.0),
                )),
          ),
          Obx(
            () {
              return ListView.builder(
                  itemBuilder: (BuildContext context, int innerIndex) {
                    final tvItem = controller.list.entries.elementAt(innerIndex);
                    final tvName = tvItem.key;
                    return Card(
                        color: Colors.lightBlue.shade100,
                        elevation: 0.0,
                        //设置shape，这里设置成了R角
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        //对Widget截取的行为，比如这里 Clip.antiAlias 指抗锯齿
                        clipBehavior: Clip.antiAlias,
                        semanticContainer: false,
                        child: InkWell(
                          onTap: () {
                            Navigator.popUntil(
                                context, ModalRoute.withName('/'));
                            final playItem = MapEntry(tvName, tvItem.value);
                            PlayManager.instant.playSource(playItem);
                          },
                          child: Row(
                            children: [
                              Container(
                                child:
                                    getImageProviderByUrl(tvItem.value.tvgLogo),
                                height: 50,
                                width: 50,
                                margin: const EdgeInsets.only(
                                  left: 12,
                                  right: 10,
                                  top: 5,
                                  bottom: 5,
                                ),
                              ),
                              Padding(
                                child: Text(
                                  tvName,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  right: 0,
                                  top: 12,
                                  bottom: 12,
                                ),
                              )
                            ],
                          ),
                        ));
                  },
                  itemCount: controller.list.length);
            },
          )
        ],
      ),
    );
  }
}
