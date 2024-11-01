import '../../data/model/tv_channel_info.dart';

class TvChannelInfoModel {
  String tvgId;
  String tvgCountry;
  String tvgLanguage;
  String tvgLogo;
  String groupTitle;
  List<String> tvgUrlList;

  TvChannelInfoModel(
    this.tvgUrlList, {
    this.tvgId = "",
    this.tvgCountry = "",
    this.tvgLanguage = "",
    this.tvgLogo = "",
    this.groupTitle = "",
  });
}