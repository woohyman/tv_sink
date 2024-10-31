import 'dart:io';

import 'package:get/get.dart';
import 'package:supabase/supabase.dart';
import 'package:tv_sink/pages/scaffold/logic.dart';
import 'package:tv_sink/pages/scaffold/widget/ad/logic.dart';
import 'package:tv_sink/pages/scaffold/widget/list/logic.dart';
import 'package:tv_sink/domain/data_provider/play_list_data_provider.dart';
import '../domain/data_provider/app_set_data_provider.dart';
import '../domain/data_provider/play_data_provider.dart';
import '../domain/data_provider/user_data_provider.dart';
import '../domain/play/ijk_play_manager.dart';
import '../domain/play/mediakit_play_manager.dart';
import '../domain/play/play_manager.dart';
import '../domain/upgrade/upgrade_manager.dart';
import '../domain/upgrade/upgrade_data_provider.dart';
import '../util/const.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SupabaseClient(supabaseUrl, supabaseKey));
    Get.put(OptionalPlayListDataProvider());
    Get.put(CollectPlayListDataProvider());
    Get.put(PlayDataProvider());
    Get.put(UpgradeDataProvider());
    Get.put(AppSetDataProvider());
    Get.put(UserDataProvider());
    Get.put(UpgradeManager());
    Get.put(ScaffoldLogic());
    Get.put(PlayListLogic<FeaturePlayListDataProvider>());
    Get.put(PlayListLogic<OptionalPlayListDataProvider>());
    Get.put(PlayListLogic<CollectPlayListDataProvider>());
    Get.put(AdLogic());

    if (Platform.isAndroid) {
      Get.put<PlayManager>(IjkPlayManager());
    } else {
      Get.put<PlayManager>(MediakitPlayManager());
    }
  }
}
