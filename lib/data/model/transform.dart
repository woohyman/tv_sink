import 'package:json_string/json_string.dart';

import '../../domain/model/TvInfo.dart';
import '../db/model/tv_info_with_name.dart';

extension Transform on MapEntry<String, TvInfo> {
  Map<String, dynamic> toMap() {
    final tvInfoWithName = TvInfoWithName(
      key,
      JsonString.encodePrimitiveList(value.tvgUrlList).source,
      tvgId: value.tvgId,
      tvgCountry: value.tvgCountry,
      tvgLanguage: value.tvgLanguage,
      tvgLogo: value.tvgLogo,
      groupTitle: value.groupTitle,
    );
    return tvInfoWithName.toJson();
  }
}

extension Extension on TvInfoWithName {
  TvInfo toTvInfo() {
    return TvInfo(
      JsonString(tvgUrlList).decodeAsPrimitiveList<String>(),
      tvgId: tvgId,
      tvgCountry: tvgCountry,
      tvgLanguage: tvgLanguage,
      tvgLogo: tvgLogo,
      groupTitle: groupTitle,
    );
  }
}
