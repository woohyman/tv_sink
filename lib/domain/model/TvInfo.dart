import 'package:json_string/json_string.dart';

class TvInfo {
  String tvgId;
  String tvgCountry;
  String tvgLanguage;
  String tvgLogo;
  String groupTitle;
  List<String> tvgUrlList;
  String tvgUrl;

  TvInfo({
    required this.tvgId,
    required this.tvgCountry,
    required this.tvgLanguage,
    required this.tvgLogo,
    required this.groupTitle,
    required this.tvgUrl,
    required this.tvgUrlList,
  });
}

extension MapOpt on MapEntry<String, TvInfo> {
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
