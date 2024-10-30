// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_info_with_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvInfoWithName _$TvInfoWithNameFromJson(Map<String, dynamic> json) =>
    TvInfoWithName(
      json['name'] as String,
      json['tvgUrlList'] as String,
      tvgId: json['tvgId'] as String? ?? "",
      tvgCountry: json['tvgCountry'] as String? ?? "",
      tvgLanguage: json['tvgLanguage'] as String? ?? "",
      tvgLogo: json['tvgLogo'] as String? ?? "",
      groupTitle: json['groupTitle'] as String? ?? "",
    );

Map<String, dynamic> _$TvInfoWithNameToJson(TvInfoWithName instance) =>
    <String, dynamic>{
      'name': instance.name,
      'tvgId': instance.tvgId,
      'tvgCountry': instance.tvgCountry,
      'tvgLanguage': instance.tvgLanguage,
      'tvgLogo': instance.tvgLogo,
      'groupTitle': instance.groupTitle,
      'tvgUrlList': instance.tvgUrlList,
    };
