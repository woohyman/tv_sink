import 'package:json_string/json_string.dart';

import '../../domain/model/TvInfo.dart';

extension Transform on MapEntry<String, TvInfo> {

  Map<String, Object> toMap() {
    return {
      'name': key,
      'tvgId': value.tvgId,
      'tvgCountry': value.tvgCountry,
      'tvgLanguage': value.tvgLanguage,
      'tvgLogo': value.tvgLogo,
      'groupTitle': value.groupTitle,
      'tvgUrlList': JsonString.encodePrimitiveList(value.tvgUrlList).source,
    };
  }
}