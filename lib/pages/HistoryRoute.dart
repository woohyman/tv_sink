import 'package:flutter/material.dart';
import 'package:tv_sink/domain/model/TvInfo.dart';

import '../data/db/HistoryDbControl.dart';
import '../domain/PlayControlManager.dart';
import '../domain/PlaylistStateManager.dart';
import '../domain/WifiManager.dart';
import '../domain/ad/TvInterstitialAd.dart';
import '../util/const.dart';
import '../widgets/list/ItemView.dart';

class HistoryRoute extends StatefulWidget {
  const HistoryRoute({Key? key}) : super(key: key);

  @override
  State<HistoryRoute> createState() => _HistoryRouteState();
}

class _HistoryRouteState extends State<HistoryRoute> {
  final _list = <String, TvInfo>{};
  final _historyDbControl = HistoryDbControl();

  @override
  void initState() {
    _historyDbControl.dogs().then((value) {
      setState(() {
        _list.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("历史记录")),
      body: Stack(
        children: [
          Visibility(
            visible: _list.isEmpty,
            child: Container(
                alignment: Alignment.center,
                child: const Text(
                  "暂无历史数据",
                  style: TextStyle(fontSize: 20.0),
                )),
          ),
          ListView.builder(
              itemBuilder: (BuildContext context, int innerIndex) {
                final tvItem = _list.entries.elementAt(innerIndex);
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
                      onTap: () async {
                        if (WifiManager.instance.isNeedConnectWithWifi) {
                          Navigator.popUntil(context, ModalRoute.withName('/'));
                          eventBus
                              .fire(const MapEntry(keyWifiCompulsion, null));
                          PlayControlManager.instance.pause();
                          return;
                        }

                        await TvInterstitialAd.instance.load();
                        TvInterstitialAd.instance.showAd(tvName, () {
                          Navigator.popUntil(context, ModalRoute.withName('/'));
                          _historyDbControl
                              .insertDog(_list.entries.elementAt(innerIndex));
                          PlayControlManager.instance.setResourceAndPlay(
                              PlaylistStateManager.instance
                                  .getSourceByKey(tvName));
                          eventBus.fire(const MapEntry(
                              keySelectState, [tabSelect, scrollToItemSelect]));
                        });
                      },
                      child: Row(
                        children: [
                          Container(
                            child: getImageProviderByUrl(tvItem.value.tvgLogo),
                            height: 50,
                            width: 50,
                            margin: const EdgeInsets.only(
                                left: 12, right: 10, top: 5, bottom: 5),
                          ),
                          Padding(
                            child: Text(
                              tvName,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 14),
                            ),
                            padding: const EdgeInsets.only(
                                left: 0, right: 0, top: 12, bottom: 12),
                          )
                        ],
                      ),
                    ));
              },
              itemCount: _list.length)
        ],
      ),
    );
  }
}
