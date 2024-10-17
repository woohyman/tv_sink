import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import '../domain/ad/banner/InlineAdapter.dart';
import '../routes/RouterTable.dart';

class SliderLeft extends StatefulWidget {
  const SliderLeft({
    Key? key,
  }) : super(key: key);

  @override
  State<SliderLeft> createState() => _SliderLeftState();
}

class _SliderLeftState extends State<SliderLeft> {
  final InlineAdapter _inlineAdapter = InlineAdapter();

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
                              'https://iozcbyxqcgvqiosrabsw.supabase.co/storage/v1/object/public/apks/1.0.18.apk?t=2024-10-16T11%3A18%3A24.596Z',
                              subject: '请下载!')
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
                      ListTile(
                        onTap: () => Navigator.of(context)
                            .popAndPushNamed(
                                RouterTable.defaultUrlListRoute),
                        leading: const Icon(Icons.local_play),
                        title: const Text('默认列表'),
                      ),
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
    );
  }
}
