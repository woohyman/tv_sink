// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_channel_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvChannelInfo _$TvChannelInfoFromJson(Map<String, dynamic> json) =>
    TvChannelInfo(
      json['name'] as String,
      json['tvgUrlList'] as String,
      tvgId: json['tvgId'] as String? ?? "",
      tvgCountry: json['tvgCountry'] as String? ?? "",
      tvgLanguage: json['tvgLanguage'] as String? ?? "",
      tvgLogo: json['tvgLogo'] as String? ?? "",
      groupTitle: json['groupTitle'] as String? ?? "",
    );

Map<String, dynamic> _$TvChannelInfoToJson(TvChannelInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'tvgId': instance.tvgId,
      'tvgCountry': instance.tvgCountry,
      'tvgLanguage': instance.tvgLanguage,
      'tvgLogo': instance.tvgLogo,
      'groupTitle': instance.groupTitle,
      'tvgUrlList': instance.tvgUrlList,
    };
