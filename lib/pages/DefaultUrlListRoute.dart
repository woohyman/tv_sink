
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase/supabase.dart';
import '../domain/parse/ParseTxtSourceToList.dart';

class DefaultUrlListRoute extends StatefulWidget {
  const DefaultUrlListRoute({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SettingRouteState();
}

int tabCounts = 0;

class _SettingRouteState extends State<DefaultUrlListRoute> {
  final defaultList = <String, Map<String, String>>{};
  int nowTime = 0;

  @override
  void initState() {

    Get.find<SupabaseClient>().from("default_m3u_list").select()
        .eq('level', 0)
        .then((values) {
      setState(() {
        for (var value in values) {
          defaultList[value["name"]] = {
            "url": value["url"],
            "status": "",
          };
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
            nowTime = DateTime
                .now()
                .millisecondsSinceEpoch;
            tabCounts++;
          } else if (tabCounts > 10) {
            if (DateTime
                .now()
                .millisecondsSinceEpoch - nowTime < 3000) {
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
