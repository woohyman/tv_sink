class TvUrlList {
  final String name;
  final String tvgId;
  final String tvgCountry;
  final String tvgLanguage;
  final String tvgLogo;
  final String groupTitle;
  final String tvgUrl;

  TvUrlList({
    required this.name,
    required this.tvgId,
    required this.tvgCountry,
    required this.tvgLanguage,
    required this.tvgLogo,
    required this.groupTitle,
    required this.tvgUrl,
  });

  Map<String, Object?> toMap() {
    return {
      'name': name,
      'tvgId': tvgId,
      'tvgCountry': tvgCountry,
      'tvgLanguage': tvgLanguage,
      'tvgLogo': tvgLogo,
      'groupTitle': groupTitle,
      'tvgUrl': tvgUrl,
    };
  }
}
