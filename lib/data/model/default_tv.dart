import 'package:json_annotation/json_annotation.dart';
import 'package:tv_sink/domain/model/tv_info.dart';

part 'default_tv.g.dart';

@JsonSerializable()
class DefaultTv {
  String name;
  String url;

  DefaultTv(
    this.name,
    this.url,
  );

  factory DefaultTv.fromJson(Map<String, dynamic> json) =>
      _$DefaultTvFromJson(json);

  Map<String, dynamic> toJson() => _$DefaultTvToJson(this);

  TvInfo toTvInfo() {
    return TvInfo([url]);
  }
}
