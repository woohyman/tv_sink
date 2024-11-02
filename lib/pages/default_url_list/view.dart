import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tv_sink/base/base_future_builder.dart';
import '../../util/view_util.dart';
import 'logic.dart';

class DefaultUrlListRoute extends GetView<DefaultUrlListLogic> {
  const DefaultUrlListRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("精选列表资源")),
      body: Obx(() {
        return BaseFutureBuilder(
          future: controller.listFuture,
          builder: (data, update) {
            RxnInt curSelect = RxnInt();
            return GestureDetector(
              onLongPress: () {
                showAlertDialog(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.builder(
                  itemCount: data.length,
                  itemExtent: 50.0, //强制高度为50.0
                  itemBuilder: (BuildContext context, int index) {
                    final status = "".obs;
                    final value = data.elementAt(index);

                    return InkWell(
                      onTap: () async {
                        curSelect.value = index;
                        controller.getStreamByUrl(value.url).listen(
                          (data) {
                            status.value = data;
                          },
                        );
                      },
                      child: ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(data.elementAt(index).name),
                            Visibility(
                                visible: curSelect.value == index,
                                child: Text(status.value)),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
