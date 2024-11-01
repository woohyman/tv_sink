import 'package:tv_sink/domain/model/tv_channel_info_model.dart';

import '../../data/model/tv_channel_info.dart';
import '../../util/transform_util.dart';

extension TvChannelInfoModelMapEntry on MapEntry<String, TvChannelInfoModel> {
  TvChannelInfo toInfo() {
    return TvChannelInfo(
      key,
      toJsonString(value.tvgUrlList),
      tvgId: value.tvgId,
      tvgCountry: value.tvgCountry,
      tvgLanguage: value.tvgLanguage,
      tvgLogo: value.tvgLogo,
      groupTitle: value.groupTitle,
    );
  }
}

extension TvChannelInfoModelMapExtension on Map<String, TvChannelInfoModel> {
  List<TvChannelInfo> toList() {
    return entries.map<TvChannelInfo>((element) {
      return TvChannelInfo(
        element.key,
        toJsonString(element.value.tvgUrlList),
        tvgId: element.value.tvgId,
        tvgCountry: element.value.tvgCountry,
        tvgLanguage: element.value.tvgLanguage,
        tvgLogo: element.value.tvgLogo,
        groupTitle: element.value.groupTitle,
      );
    }).toList();
  }
}

extension TvChannelInfoListExtension on List<TvChannelInfo> {
  Map<String, TvChannelInfoModel> toMap() {
    return asMap().map(
      (key, value) {
        return MapEntry(
          value.name,
          TvChannelInfoModel(
            toStringList(value.tvgUrlList),
            tvgId: value.tvgId,
            tvgCountry: value.tvgCountry,
            tvgLanguage: value.tvgLanguage,
            tvgLogo: value.tvgLogo,
            groupTitle: value.groupTitle,
          ),
        );
      },
    );
  }
}
