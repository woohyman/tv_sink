import 'package:json_string/json_string.dart';

import '../../pages/model/data.dart';

class TvInfo {
  String tvgId;
  String tvgCountry;
  String tvgLanguage;
  String tvgLogo;
  String groupTitle;
  List<String> tvgUrlList;
  String tvgUrl;

  TvInfo(
    this.tvgUrl,
    this.tvgUrlList, {
    this.tvgId = "",
    this.tvgCountry = "",
    this.tvgLanguage = "",
    this.tvgLogo = "",
    this.groupTitle = "",
  });
}

extension Transform on MapEntry<String, TvInfo> {

  Map<String, Object?> toMap() {
    return {
      'name': key,
      'tvgId': value.tvgId,
      'tvgCountry': value.tvgCountry,
      'tvgLanguage': value.tvgLanguage,
      'tvgLogo': value.tvgLogo,
      'groupTitle': value.groupTitle,
      'tvgUrl': value.tvgUrl,
      'tvgUrlList': JsonString.encodePrimitiveList(value.tvgUrlList).source,
    };
  }
}
