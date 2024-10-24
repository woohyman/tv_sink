import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:path_provider/path_provider.dart';
import 'package:supabase/supabase.dart';
import 'package:tv_sink/util/log.dart';

import '../control/WatchListsController.dart';
import '../data/OptionalDbControl.dart';
import '../domain/model/TvList.dart';
import '../domain/parse/ParseTxtSourceToList.dart';

class DefaultUrlListRoute extends StatefulWidget {
  const DefaultUrlListRoute({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SettingRouteState();
}

int tabCounts = 0;

class _SettingRouteState extends State<DefaultUrlListRoute> {
  final Map<String, Map<String, String>> defaultList =
      <String, Map<String, String>>{};
  OptionalDbControl control = OptionalDbControl();
  int nowTime = 0;

  @override
  void initState() {
    //从数据库中读取数据,预刷新界面
    control.dogs().then((tvList) {
      setState(() {
        for (var value in tvList) {
          defaultList[value.name] = {
            "url": value.url,
            "status": "",
          };
        }
      });
    });

    //从后台读取数据并写入数据库
    final supabase = Get.find<SupabaseClient>();
    supabase.from("default_m3u_list").select().eq('level', 0).then((values) {
      setState(() {
        for (var value in values) {
          defaultList[value["name"]] = {
            "url": value["url"],
            "status": "",
          };
          control.insertDog(
            TvList(
              id: values.indexOf(value),
              name: value["name"],
              url: value["url"],
            ),
          );
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("精选列表资源")),
      body: GestureDetector(
        onTap: () {
          if (tabCounts == 0) {
            nowTime = DateTime.now().millisecondsSinceEpoch;
            tabCounts++;
          } else if (tabCounts > 10) {
            if (DateTime.now().millisecondsSinceEpoch - nowTime < 3000) {
              setState(() {
                Get.find<SupabaseClient>()
                    .from("default_m3u_list")
                    .select()
                    .then((values) {
                  setState(() {
                    for (var value in values) {
                      defaultList[value["name"]] = {
                        "url": value["url"],
                        "status": "",
                      };
                      control.insertDog(
                        TvList(
                          id: values.indexOf(value),
                          name: value["name"],
                          url: value["url"],
                        ),
                      );
                    }
                  });
                });
              });
            } else {
              tabCounts = 0;
            }
          } else {
            tabCounts++;
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
              itemCount: defaultList.length,
              itemExtent: 50.0, //强制高度为50.0
              itemBuilder: (BuildContext context, int index) {
                final value = defaultList.values.elementAt(index);
                return InkWell(
                  onTap: () async {
                    setState(() {
                      value["status"] = "开始下载数据...${DateTime.now()}";
                    });

                    Dio().request(value["url"] ?? "",
                        onReceiveProgress: (int count, int total) {
                      setState(() {
                        value["status"] = "进度:$count/$total";
                      });
                    }).then((item) {
                      if (item.statusCode == 200) {
                        setState(() {
                          value["status"] = "下载数据成功,开始解析数据";
                          parseData(item.data);
                          value["status"] = "已读取至列表";
                        });
                      }
                    }).catchError((e) {
                      setState(() {
                        value["status"] = "4加载失败";
                      });
                    });
                  },
                  child: ListTile(
                      title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(defaultList.keys.elementAt(index)),
                      Text(value["status"] ?? ""),
                    ],
                  )),
                );
              }),
        ),
      ),
    );
  }
}
