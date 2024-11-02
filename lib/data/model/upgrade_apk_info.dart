import 'package:json_annotation/json_annotation.dart';

part 'upgrade_apk_info.g.dart';

@JsonSerializable()
class UpgradeApkInfo {
  String version_name;
  String content;
  String url;
  int version_code;

  UpgradeApkInfo(
    this.version_name,
    this.url,
    this.version_code, {
    this.content = "",
  });

  factory UpgradeApkInfo.fromJson(Map<String, dynamic> json) =>
      _$UpgradeApkInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UpgradeApkInfoToJson(this);
}
