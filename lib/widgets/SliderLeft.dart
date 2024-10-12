import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import '../ad/banner/InlineAdapter.dart';
import '../routes/RouterTable.dart';

int tabCounts = 0;

class SliderLeft extends StatefulWidget {
  const SliderLeft({
    Key? key,
  }) : super(key: key);

  @override
  State<SliderLeft> createState() => _SliderLeftState();
}

class _SliderLeftState extends State<SliderLeft> {
  final InlineAdapter _inlineAdapter = InlineAdapter();
  int nowTime = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _inlineAdapter.loadAd(context, () => setState(() => {}));
  }

  @override
  void dispose() {
    super.dispose();
    _inlineAdapter.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Drawer(
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: InkWell(
            onTap: () {
              if (tabCounts == 0) {
                nowTime = DateTime.now().millisecondsSinceEpoch;
                tabCounts++;
              } else if (tabCounts > 10) {
                if (DateTime.now().millisecondsSinceEpoch - nowTime < 3000) {
                  setState(() {});
                }else{
                  tabCounts = 0;
                }
              }else{
                tabCounts++;
              }
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: ListView(
                      children: <Widget>[
                        ListTile(
                          leading: const Icon(Icons.settings),
                          title: const Text('应用设置'),
                          onTap: () => Navigator.of(context)
                              .popAndPushNamed(RouterTable.appSettingPath),
                        ),
                        ListTile(
                          onTap: () => Navigator.of(context)
                              .popAndPushNamed(RouterTable.historyPath),
                          leading: const Icon(Icons.history),
                          title: const Text('观看历史'),
                        ),
                        ListTile(
                          onTap: () => {
                            Share.share(
                                'check out my website https://example.com',
                                subject: 'Look what I made!')
                          },
                          leading: const Icon(Icons.share),
                          title: const Text('分享App'),
                        ),
                        ListTile(
                          onTap: () => Navigator.of(context)
                              .popAndPushNamed(RouterTable.parseUrlListRoute),
                          leading: const Icon(Icons.local_hospital),
                          title: const Text('解析M3U'),
                        ),
                        Visibility(
                            visible: tabCounts > 10,
                            child: ListTile(
                              onTap: () => Navigator.of(context)
                                  .popAndPushNamed(
                                      RouterTable.defaultUrlListRoute),
                              leading: const Icon(Icons.local_play),
                              title: const Text('默认列表'),
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: _inlineAdapter.getAdWidget(() => setState(() => {})),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
