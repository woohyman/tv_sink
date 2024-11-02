// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upgrade_apk_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpgradeApkInfo _$UpgradeApkInfoFromJson(Map<String, dynamic> json) =>
    UpgradeApkInfo(
      json['version_name'] as String,
      json['url'] as String,
      (json['version_code'] as num).toInt(),
      content: json['content'] as String? ?? "",
    );

Map<String, dynamic> _$UpgradeApkInfoToJson(UpgradeApkInfo instance) =>
    <String, dynamic>{
      'version_name': instance.version_name,
      'content': instance.content,
      'url': instance.url,
      'version_code': instance.version_code,
    };
