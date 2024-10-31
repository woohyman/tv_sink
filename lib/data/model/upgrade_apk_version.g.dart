// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upgrade_apk_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpgradeApkVersion _$UpgradeApkVersionFromJson(Map<String, dynamic> json) =>
    UpgradeApkVersion(
      json['version_name'] as String,
      json['content'] as String,
      json['url'] as String,
      (json['version_code'] as num).toInt(),
    );

Map<String, dynamic> _$UpgradeApkVersionToJson(UpgradeApkVersion instance) =>
    <String, dynamic>{
      'version_name': instance.version_name,
      'content': instance.content,
      'url': instance.url,
      'version_code': instance.version_code,
    };
