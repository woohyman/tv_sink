import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase/supabase.dart';
import '../../data/net/DownloadRepository.dart';
import '../../domain/DowloadController.dart';
import '../../domain/UserController.dart';
import '../../domain/data_provider/UserDataProvider.dart';
import '../../domain/data_provider/play_list_data_provider.dart';
import '../../domain/model/RemoteListUrl.dart';
import '../../domain/parse/ParseTxtSourceToList.dart';
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
            final defaultList = <RemoteListUrl>[];
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Container(
                    alignment: Alignment.center, child: const Text("加载错误"));
              } else {
                defaultList.addAll(snapshot.data?.toUrlList() ?? []);
              }
            } else {
              return Container(
                  alignment: Alignment.center,
                  child: const CircularProgressIndicator());
            }

            RxnInt curSelect = RxnInt();

            return GestureDetector(
              onLongPress: () {
                UserController().showAlertDialog(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.builder(
                  itemCount: defaultList.length,
                  itemExtent: 50.0, //强制高度为50.0
                  itemBuilder: (BuildContext context, int index) {
                    final status = "".obs;
                    final value = defaultList.elementAt(index);

                    return Obx(() {
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
                              Text(defaultList.elementAt(index).name),
                              Visibility(
                                  visible: curSelect.value == index,
                                  child: Text(status.value)),
                            ],
                          ),
                        ),
                      );
                    });
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
