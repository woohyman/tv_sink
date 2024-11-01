import 'package:json_annotation/json_annotation.dart';

part 'file_m3u_info.g.dart';

@JsonSerializable()
class FileM3uInfo {
  String url;
  String name;

  FileM3uInfo(
    this.url,
    this.name,
  );

  factory FileM3uInfo.fromJson(Map<String, dynamic> json) =>
      _$FileM3uInfoFromJson(json);

  Map<String, dynamic> toJson() => _$FileM3uInfoToJson(this);
}
