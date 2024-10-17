// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      json['name'] as String,
      json['tvgId'] as String,
      json['tvgCountry'] as String,
      json['tvgLanguage'] as String,
      json['tvgLogo'] as String,
      json['groupTitle'] as String,
      (json['tvgUrl'] as List<dynamic>).map((e) => e as String).toList(),
      json['selectUrl'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'tvgId': instance.tvgId,
      'tvgCountry': instance.tvgCountry,
      'tvgLanguage': instance.tvgLanguage,
      'tvgLogo': instance.tvgLogo,
      'groupTitle': instance.groupTitle,
      'tvgUrl': instance.tvgUrl,
      'selectUrl': instance.selectUrl,
    };
