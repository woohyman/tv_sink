import '../../data/db/model/tv_info_with_name.dart';

class TvInfo {
  String tvgId;
  String tvgCountry;
  String tvgLanguage;
  String tvgLogo;
  String groupTitle;
  List<String> tvgUrlList;

  TvInfo(
    this.tvgUrlList, {
    this.tvgId = "",
    this.tvgCountry = "",
    this.tvgLanguage = "",
    this.tvgLogo = "",
    this.groupTitle = "",
  });
}


