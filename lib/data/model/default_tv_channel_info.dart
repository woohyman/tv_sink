import 'package:json_annotation/json_annotation.dart';
import 'package:tv_sink/data/model/tv_channel_info.dart';
import 'package:tv_sink/domain/model/tv_channel_info_model.dart';

import '../../util/transform_util.dart';

part 'default_tv_channel_info.g.dart';

//精选频道列表
@JsonSerializable()
class DefaultTvChannelInfo {
  String name;
  String url;

  DefaultTvChannelInfo(
    this.name,
    this.url,
  );

  factory DefaultTvChannelInfo.fromJson(Map<String, dynamic> json) =>
      _$DefaultTvChannelInfoFromJson(json);

  Map<String, dynamic> toJson() => _$DefaultTvChannelInfoToJson(this);

  TvChannelInfo toTvChannelInfo() {
    return TvChannelInfo(name, toJsonString([url]));
  }
}
