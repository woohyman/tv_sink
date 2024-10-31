import 'package:get/get.dart';
import 'package:supabase/supabase.dart';

import 'supabase_builder_enum.dart';

abstract class BaseSupabase {
  SupabaseClient get supabase {
    return Get.find<SupabaseClient>();
  }

  get defaultM3uListBuilder => SupabaseBuilderEnum.defaultM3uList.from(supabase);
  get defaultTvListBuilder => SupabaseBuilderEnum.defaultTvList.from(supabase);
  get upgradeBuilder => SupabaseBuilderEnum.upgrade.from(supabase);
}
