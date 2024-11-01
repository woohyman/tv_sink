import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../util/view_util.dart';
import 'logic.dart';

class DefaultUrlListRoute extends GetView<DefaultUrlListLogic> {
  const DefaultUrlListRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("精选列表资源")),
      body: Obx(() {
        return FutureBuilder(
          future: controller.listFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Container(
                    alignment: Alignment.center, child: const Text("加载错误"));
              }
            } else {
              return Container(
                  alignment: Alignment.center,
                  child: const CircularProgressIndicator());
            }

            RxnInt curSelect = RxnInt();

            return GestureDetector(
              onLongPress: () {
                showAlertDialog(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemExtent: 50.0, //强制高度为50.0
                  itemBuilder: (BuildContext context, int index) {
                    final status = "".obs;
                    final value = snapshot.data!.elementAt(index);

                    return Obx(
                      () {
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
                                Text(snapshot.data!.elementAt(index).name),
                                Visibility(
                                    visible: curSelect.value == index,
                                    child: Text(status.value)),
                              ],
                            ),
                          ),
                        );
                      },
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
