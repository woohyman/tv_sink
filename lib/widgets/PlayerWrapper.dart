import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:provider/provider.dart';
import 'package:tvSink/model/bean/TvResource.dart';

import '../business/PlayControlManager.dart';
import '../util/log.dart';

class PlayerWrapper extends StatefulWidget {
  late String _dataSource;

  PlayerWrapper(String dataSource, {Key? key}) : super(key: key) {
    _dataSource = dataSource;
  }

  @override
  State<PlayerWrapper> createState() => _PlayerWrapperState();
}

class _PlayerWrapperState extends State<PlayerWrapper> {
  int _active = 0;
  late VlcPlayerController _videoPlayerController;

  void _handleTap(CommonData commonData) {
    logger.d("_handleTap => ???????????????//  $_active");
    if(_active == 0) _active = 1;
    _videoPlayerController.isPlaying().then((value) => {
    if (value == false) {
      commonData.setTvChannel(_videoPlayerController.dataSource),
      logger.d("===> kaishibofangship"),
      PlayControlManager.instance.playCurTv(_videoPlayerController.dataSource),
    } else{
      _videoPlayerController.stop(),
      logger.d("zantingbofangshiping"),
    }
        }
    );

  }
  late List array;
  @override
  void initState() {
    array = widget._dataSource.split(",");
    logger.i("initState|title = ${array[0]}");
    String dataSource1 = widget._dataSource;
    if(array.length >1) dataSource1 = dataSource1.split(",")[1];
    _videoPlayerController = PlayControlManager.instance.getCurController(dataSource1)
        ??VlcPlayerController.network(
          dataSource1,
          hwAcc: HwAcc.full,
          autoPlay: false,
          options: VlcPlayerOptions(),
        );
    PlayControlManager.instance.setCurTvChannel(dataSource1, _videoPlayerController);
    super.initState();
  }

  Widget getStateView(){
    if(_active == 0){
      return Icon(Icons.play_circle_filled);
    }else{
      return CircularProgressIndicator(
        backgroundColor: Colors.grey[200],
        valueColor: AlwaysStoppedAnimation(Colors.blue),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CommonData>(builder: (ctx, commonData, child) {
      return Stack(
        alignment: Alignment.center ,
        children: <Widget>[
          getStateView(),
          InkWell(
            onTap: () => {_handleTap(commonData)},
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(array[0]??""),
              VlcPlayer(
                controller: _videoPlayerController,
                aspectRatio: 16 / 9,
                placeholder: const Center(child: CircularProgressIndicator()),
              ),
      ],
      )
          ),
      ],
      );
    });
  }
}
