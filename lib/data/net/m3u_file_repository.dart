import 'package:supabase/supabase.dart';
import 'package:tv_sink/data/net/base/base_supabase.dart';

class M3uFileRepository extends BaseSupabase {
  Future<PostgrestList> fetchFileList({int? level}) {
    if (level == null) {
      return defaultM3uListBuilder.select();
    } else {
      return defaultM3uListBuilder.select().eq('level', level);
    }
  }
}
