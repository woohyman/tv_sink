import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase/supabase.dart';
import '../domain/UserController.dart';
import '../domain/data_provider/UserDataProvider.dart';
import '../domain/data_provider/WatchListsDataProvider.dart';
import '../domain/model/RemoteListUrl.dart';
import '../domain/parse/ParseTxtSourceToList.dart';

class DefaultUrlListRoute extends StatefulWidget {
  const DefaultUrlListRoute({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SettingRouteState();
}

int tabCounts = 0;

class _SettingRouteState extends State<DefaultUrlListRoute> {
  Future<PostgrestList> get _listFuture {
    if (UserDataProvider.fromGet().isVip.value) {
      return Get.find<SupabaseClient>().from("default_m3u_list").select();
    } else {
      return Get.find<SupabaseClient>()
          .from("default_m3u_list")
          .select()
          .eq('level', 0);
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("精选列表资源")),
      body: Obx(() {
        return FutureBuilder(
          future: _listFuture,
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
            Dio dio = Dio();

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
                          status.value = "开始下载数据...";
                          dio.close();
                          dio = Dio();
                          dio.request(value.url,
                              onReceiveProgress: (int count, int total) {
                            status.value = "进度:$count/$total";
                          }).then((item) {
                            if (item.statusCode == 200) {
                              status.value = "下载数据成功,开始解析数据";
                              parseData(item.data);
                              status.value = "已读取至列表";
                            }
                          });
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
