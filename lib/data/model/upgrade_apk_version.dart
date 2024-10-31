import 'package:json_annotation/json_annotation.dart';
part 'upgrade_apk_version.g.dart';

@JsonSerializable()
class UpgradeApkVersion {
  String version_name;
  String content;
  String url;
  int version_code;

  UpgradeApkVersion(
    this.version_name,
    this.content,
    this.url,
    this.version_code,
  );

  factory UpgradeApkVersion.fromJson(Map<String, dynamic> json) =>
      _$UpgradeApkVersionFromJson(json);

  Map<String, dynamic> toJson() => _$UpgradeApkVersionToJson(this);
}
