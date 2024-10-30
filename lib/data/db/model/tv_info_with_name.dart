import 'package:json_annotation/json_annotation.dart';

part 'tv_info_with_name.g.dart';

@JsonSerializable()
class TvInfoWithName {
  String name;
  String tvgId;
  String tvgCountry;
  String tvgLanguage;
  String tvgLogo;
  String groupTitle;
  String tvgUrlList;

  TvInfoWithName(
    this.name,
    this.tvgUrlList, {
    this.tvgId = "",
    this.tvgCountry = "",
    this.tvgLanguage = "",
    this.tvgLogo = "",
    this.groupTitle = "",
  });

  factory TvInfoWithName.fromJson(Map<String, dynamic> json) =>
      _$TvInfoWithNameFromJson(json);

  Map<String, dynamic> toJson() => _$TvInfoWithNameToJson(this);
}
