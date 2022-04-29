import 'package:flutter/material.dart';
import 'package:tvSink/util/log.dart';

import '../ad/TvInterstitialAd.dart';
import '../business/EventBus.dart';
import '../business/PlayControlManager.dart';
import '../business/WifiManager.dart';
import '../model/bean/TvResource.dart';
import '../model/sharePreference.dart';
import '../util/const.dart';
import '../widgets/TvNameList.dart';

class HistoryRoute extends StatefulWidget {
  const HistoryRoute({Key? key}) : super(key: key);

  @override
  State<HistoryRoute> createState() => _HistoryRouteState();
}

class _HistoryRouteState extends State<HistoryRoute> {
  final List<String> _list = [];

  @override
  void initState() {
    fetchHistorySharedPreferences().then((value) => {
          setState(() {
            _list.addAll(value.reversed);
          })
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (BuildContext context, int innerIndex) {
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
                  if(WifiManager.instance.isNeedConnectWithWifi()){
                    Navigator.popUntil(context, ModalRoute.withName('/'));
                    bus.emit(keyWifiCompulsion);
                    PlayControlManager.instance.pause();
                    return;
                  }

                  await TvInterstitialAd.instance.load();
                  TvInterstitialAd.instance.showAd(_list[innerIndex], () {
                    Navigator.popUntil(context, ModalRoute.withName('/'));
                    notifyPositionChange(_list[innerIndex]);
                    setTvChannel(_list[innerIndex], 0);
                    saveHistorySharedPreferences(_list[innerIndex]);

                    PlayControlManager.instance.setResourceAndPlay(_list[innerIndex], getLiveSource(_list[innerIndex]));
                    bus.emit(keySelectState, [tabSelect, scrollToItemSelect]);
                  });
                },
                child: Row(
                  children: [
                    Container(
                      child: getImageProviderByUrl(getIconUrl(index, innerIndex)),
                      height: 50,
                      width: 50,
                      margin: const EdgeInsets.only(left: 12, right: 10, top: 5, bottom: 5),
                    ),
                    Padding(
                      child: Text(
                        _list[innerIndex],
                        style: const TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      padding: const EdgeInsets.only(left: 0, right: 0, top: 12, bottom: 12),
                    )
                  ],
                ),
              ));
        },
        itemCount: _list.length);
  }
}
