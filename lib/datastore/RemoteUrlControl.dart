import 'package:supabase_flutter/supabase_flutter.dart';

Map<String, dynamic> defaultTvList = <String, dynamic>{};

class RemoteUrlControl {

  Future<void> fetchDefaultUrlList() async {
    final supabase = Supabase.instance.client;
    final list = await supabase.from("default_tv_list").select();
    print("******************** $list");
    list.forEach((item) {
      defaultTvList[item["name"]] = {
        "tvgId": "",
        "tvgCountry": "",
        "tvgLanguage": "",
        "tvgLogo": "",
        "groupTitle": "",
        "tvgUrl": [item["url"]],
      };
    });
  }

}
