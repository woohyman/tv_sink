import 'package:tv_sink/data/model/default_tv.dart';
import 'package:tv_sink/domain/model/tv_info.dart';

import 'base/base_supabase.dart';

class RemoteUrlRepository extends BaseSupabase {
  Future<Map<String, TvInfo>> fetchDefaultUrlList() async {
    final list = await defaultTvListBuilder.select();
    final defaultTvList = <String, TvInfo>{};

    for (var item in list) {
      final defaultTv = DefaultTv.fromJson(item);
      defaultTvList[defaultTv.name] = defaultTv.toTvInfo();
    }
    return defaultTvList;
  }
}
