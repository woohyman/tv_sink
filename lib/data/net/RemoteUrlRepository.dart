import 'package:get/get.dart';
import 'package:supabase/supabase.dart';
import 'package:tv_sink/domain/model/TvInfo.dart';

class RemoteUrlRepository {
  Future<Map<String, TvInfo>> fetchDefaultUrlList() async {
    final supabase = Get.find<SupabaseClient>();
    final list = await supabase.from("default_tv_list").select();
    final defaultTvList = <String, TvInfo>{};

    for (var item in list) {
      defaultTvList[item["name"]] = TvInfo(
        item["url"],
        [item["url"]],
        tvgId: "",
        tvgCountry: "",
        tvgLanguage: "",
        tvgLogo: "",
        groupTitle: "",
      );
    }
    return defaultTvList;
  }
}
