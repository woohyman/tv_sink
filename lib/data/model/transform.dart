
import '../../domain/model/tv_info.dart';
import '../../util/transform_util.dart';
import 'tv_info_with_name.dart';

extension Transform on MapEntry<String, TvInfo> {
  Map<String, dynamic> toMap() {
    final tvInfoWithName = TvInfoWithName(
      key,
      toJsonString(value.tvgUrlList),
      tvgId: value.tvgId,
      tvgCountry: value.tvgCountry,
      tvgLanguage: value.tvgLanguage,
      tvgLogo: value.tvgLogo,
      groupTitle: value.groupTitle,
    );
    return tvInfoWithName.toJson();
  }
}
