import 'package:json_annotation/json_annotation.dart';
part 'tv_channel_info.g.dart';

@JsonSerializable()
class TvChannelInfo {
  String name;
  String tvgId;
  String tvgCountry;
  String tvgLanguage;
  String tvgLogo;
  String groupTitle;
  String tvgUrlList;

  TvChannelInfo(
    this.name,
    this.tvgUrlList, {
    this.tvgId = "",
    this.tvgCountry = "",
    this.tvgLanguage = "",
    this.tvgLogo = "",
    this.groupTitle = "",
  });

  factory TvChannelInfo.fromJson(Map<String, dynamic> json) =>
      _$TvChannelInfoFromJson(json);

  Map<String, dynamic> toJson() => _$TvChannelInfoToJson(this);
}
