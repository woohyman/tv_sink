import 'package:tv_sink/data/net/base/base_supabase.dart';

import '../../model/file_m3u_info.dart';

//精选m3u列表
class M3uFileRepository extends BaseSupabase {
  Future<List<FileM3uInfo>> fetchFileList({int? level}) async {
    List<dynamic> data = [];
    if (level == null) {
      data = await defaultM3uListBuilder.select();
    } else {
      data = await defaultM3uListBuilder.select().eq('level', level);
    }
    return data.map((value) {
      return FileM3uInfo.fromJson(value);
    }).toList();
  }
}
