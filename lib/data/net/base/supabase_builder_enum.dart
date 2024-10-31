import 'package:supabase/supabase.dart';

enum SupabaseBuilderEnum {
  defaultM3uList("default_m3u_list"),
  defaultTvList("default_tv_list"),
  upgrade("upgrade");

  const SupabaseBuilderEnum(this.cmd);

  final String cmd;

  SupabaseQueryBuilder from(SupabaseClient supabase) {
    return supabase.from(cmd);
  }
}
