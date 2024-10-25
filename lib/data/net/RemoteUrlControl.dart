import 'package:get/get.dart';
import 'package:supabase/supabase.dart';
import 'package:tv_sink/domain/model/TvInfo.dart';

class RemoteUrlControl {
  Future<Map<String, TvInfo>> fetchDefaultUrlList() async {
    final supabase = Get.find<SupabaseClient>();
    final list = await supabase.from("default_tv_list").select();
    final defaultTvList = <String, TvInfo>{};

    for (var item in list) {
      defaultTvList[item["name"]] = TvInfo(
          tvgId: "",
          tvgCountry: "",
          tvgLanguage: "",
          tvgLogo: "",
          groupTitle: "",
          tvgUrl: item["url"],
          tvgUrlList: [item["url"]]);
    }
    return defaultTvList;
  }
}
