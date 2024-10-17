import 'package:json_annotation/json_annotation.dart';

// user.g.dart 将在我们运行生成命令后自动生成
part 'user.g.dart';

///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()
class User {
  User(
    this.name,
    this.tvgId,
    this.tvgCountry,
    this.tvgLanguage,
    this.tvgLogo,
    this.groupTitle,
    this.tvgUrl,
    this.selectUrl,
  );

  String name;
  String tvgId;
  String tvgCountry;
  String tvgLanguage;
  String tvgLogo;
  String groupTitle;
  List<String> tvgUrl;

  //当前正在播放的url索引
  String selectUrl;

  //不同的类使用不同的mixin即可
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
