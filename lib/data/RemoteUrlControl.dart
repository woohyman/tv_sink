import 'package:supabase_flutter/supabase_flutter.dart';



class RemoteUrlControl {

  Future<Map<String, dynamic>> fetchDefaultUrlList() async {
    final supabase = Supabase.instance.client;
    final list = await supabase.from("default_tv_list").select();
    Map<String, dynamic> defaultTvList = <String, dynamic>{};

    for (var item in list) {
      defaultTvList[item["name"]] = {
        "tvgId": "",
        "tvgCountry": "",
        "tvgLanguage": "",
        "tvgLogo": "",
        "groupTitle": "",
        "tvgUrl": [item["url"]],
      };
    }

    return defaultTvList;
  }

}
