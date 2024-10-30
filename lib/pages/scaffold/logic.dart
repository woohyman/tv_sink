import 'package:flutter/cupertino.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import '../../domain/upgrade/UpgradeController.dart';
import 'state.dart';

class ScaffoldLogic extends GetxController {
  final ScaffoldState state = ScaffoldState();
  final _selectedIndex = 0.obs;

  int get selectedIndex {
    return _selectedIndex.value;
  }

  set selectedIndex(int index) {
    _selectedIndex.value = index;
  }

  void init(BuildContext context){
    UpgradeController.fromGet().showDialog(context);
    UpgradeController.fromGet().init(context);



    FlutterNativeSplash.remove();
  }
}
