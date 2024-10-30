import 'package:get/get.dart';
import 'package:supabase/supabase.dart';

import '../../domain/DowloadController.dart';
import '../../domain/data_provider/UserDataProvider.dart';

class DefaultUrlListLogic extends GetxController {
  final _downloadController = DownloadController();

  Future<PostgrestList> get listFuture {
    if (UserDataProvider.fromGet().isVip.value) {
      return Get.find<SupabaseClient>().from("default_m3u_list").select();
    } else {
      return Get.find<SupabaseClient>()
          .from("default_m3u_list")
          .select()
          .eq('level', 0);
    }
  }

  Stream<String> getStreamByUrl(String url) {
    return _downloadController.fetchRemoteData(url);
  }
}
