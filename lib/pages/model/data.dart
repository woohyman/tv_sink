//正在播放的电视信息
class PlayTvInfo {
  String tvgId;
  String tvgCountry;
  String tvgLanguage;
  String tvgLogo;
  String groupTitle;
  Map<String, PlayUrlInfo> tvgUrlList;
  String tvgUrl;

  PlayTvInfo(
    this.tvgUrl,
    this.tvgUrlList, {
    this.tvgId = "",
    this.tvgCountry = "",
    this.tvgLanguage = "",
    this.tvgLogo = "",
    this.groupTitle = "",
  });
}

class PlayUrlInfo {
  bool isConnected;
  int successCount;

  PlayUrlInfo(
    this.isConnected,
    this.successCount,
  );
}
