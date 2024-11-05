import 'package:tv_sink/data/model/default_tv_channel_info.dart';
import 'package:tv_sink/data/model/tv_channel_info.dart';
import '../base/base_supabase.dart';

//精选频道列表
class RemoteUrlRepository extends BaseSupabase {
  Future<List<TvChannelInfo>> fetchDefaultUrlList() async {
    final list = await defaultTvListBuilder.select();
    final defaultTvList = <TvChannelInfo>[];

    for (var item in list) {
      final defaultTv = DefaultTvChannelInfo.fromJson(item).toTvChannelInfo();
      defaultTvList.add(defaultTv);
    }
    return defaultTvList;
  }
}
